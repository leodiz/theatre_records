class Actor < ActiveRecord::Base
  has_and_belongs_to_many :awards
  has_many :contracts
  def first_last_name
    "#{first_name} #{last_name} (#{birthday})"
  end
end
