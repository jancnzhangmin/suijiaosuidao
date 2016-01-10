class Advertisement < ActiveRecord::Base
  mount_uploader :adimage, AdimageUploader
end
