class Performance < ActiveRecord::Base
  has_many :contracts
  belongs_to :play
  validates :play_id, presence: true
  def datetime_with_play
    "#{play.title} / #{datetime}"
  end
end
