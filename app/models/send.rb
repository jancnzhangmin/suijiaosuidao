class Send < ActiveRecord::Base
  has_many :indents
  has_secure_password
end
