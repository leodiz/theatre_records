class Role < ActiveRecord::Base
  belongs_to :play
  has_many :contracts
  validates_presence_of :title
end
