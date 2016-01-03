class Order < ActiveRecord::Base
  has_many :orderdetails
  belongs_to :user
  belongs_to :send
end
