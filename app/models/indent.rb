class Indent < ActiveRecord::Base
has_many :orderdetails
  belongs_to :send
belongs_to :user
end
