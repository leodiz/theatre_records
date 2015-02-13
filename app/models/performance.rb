class Performance < ActiveRecord::Base
  has_many :contracts, dependent: :destroy
  belongs_to :play
  validates_presence_of :datetime, :budget, :play_id
  validates_numericality_of :budget
  def datetime_with_play
    "#{play.title} / #{datetime}"
  end
end
