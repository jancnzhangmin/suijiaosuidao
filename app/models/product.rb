class Product < ActiveRecord::Base
  has_many :orderdetails
  belongs_to :seller
  belongs_to :unit
end
