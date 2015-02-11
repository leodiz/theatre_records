class Actor < ActiveRecord::Base
  has_and_belongs_to_many :awards
  has_many :contracts
  validates_presence_of :first_name, :last_name, :birthday, :experence
  def first_last_name
    "#{first_name} #{last_name} (#{birthday})"
  end
end
