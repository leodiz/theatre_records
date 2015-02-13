class Role < ActiveRecord::Base
  belongs_to :play
  has_many :contracts, dependent: :destroy
  validates_presence_of :title
end
