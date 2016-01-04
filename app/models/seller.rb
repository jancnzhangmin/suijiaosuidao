class Seller < ActiveRecord::Base
  belongs_to :cla
  has_many :procucts
end
