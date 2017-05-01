class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :role

  mount_uploader :image, ImageUploader
end
