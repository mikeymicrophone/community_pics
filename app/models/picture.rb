class Picture < ActiveRecord::Base
  mount_uploader :photo_file, PhotoUploader
end
