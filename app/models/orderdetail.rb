class Orderdetail < ActiveRecord::Base
  belongs_to :indent
  belongs_to :product
end
