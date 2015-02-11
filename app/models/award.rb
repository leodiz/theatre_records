class Award < ActiveRecord::Base
  has_and_belongs_to_many :actors
  validates_presence_of :title, :date

end
