class Play < ActiveRecord::Base
  has_many :roles, dependent: :destroy
  has_many :performances
  accepts_nested_attributes_for :roles, allow_destroy: true
  validates_presence_of :title, :description, :author, :year_of_foundation
end
