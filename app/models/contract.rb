class Contract < ActiveRecord::Base
  belongs_to :actor
  belongs_to :performance
  belongs_to :role
end
