class Role < ActiveRecord::Base
  attr_accessible :name, :status
  scope :active_roles, ->{where(status: 'active')}
end
