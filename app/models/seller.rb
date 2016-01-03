class Seller < ActiveRecord::Base
  belongs_to :Cla
  has_many :procucts
end
