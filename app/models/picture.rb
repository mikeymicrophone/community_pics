class Picture < ActiveRecord::Base
  has_many :taggings
  has_many :tags, :through => :taggings
  
  mount_uploader :photo_file, PhotoUploader
  
  paginates_per 2
end