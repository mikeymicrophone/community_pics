class Picture < ActiveRecord::Base
  has_many :taggings
  has_many :tags, :through => :taggings
  has_many :listed_pictures
  has_many :lists, :through => :listed_pictures
  
  mount_uploader :photo_file, PhotoUploader
  
  paginates_per 2

  scope :not_in_list, lambda { |list| where("id not in (select picture_id from listed_pictures where list_id = ?)", list.id) }
  scope :fresh, lambda { where('created_at > ?', 5.minutes.ago) }
end