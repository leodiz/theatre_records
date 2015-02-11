class Role < ActiveRecord::Base
  belongs_to :play
  has_many :contracts
end
