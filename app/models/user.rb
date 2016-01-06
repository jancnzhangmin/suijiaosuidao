class User < ActiveRecord::Base
  has_many :indents
end
