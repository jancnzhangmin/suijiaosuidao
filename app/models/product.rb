class Product < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
  has_many :orderdetails
  belongs_to :seller
  belongs_to :unit
end
