class Seller < ActiveRecord::Base
  mount_uploader :logo, LogoUploader
  belongs_to :cla
  has_many :products
  has_secure_password
end
