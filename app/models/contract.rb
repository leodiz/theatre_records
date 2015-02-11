class Contract < ActiveRecord::Base
  belongs_to :actor
  belongs_to :performance
  belongs_to :role
  validates_presence_of :sum, :date, :role_id, :performance_id, :actor_id
  validates_numericality_of :sum
end
