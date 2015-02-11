class Performance < ActiveRecord::Base
  has_many :contracts
  belongs_to :play
  validates_presence_of :datetime, :budget, :play_id
  def datetime_with_play
    "#{play.title} / #{datetime}"
  end
end
