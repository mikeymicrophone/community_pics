class Note < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :taggings, :as => :taggable
  has_many :tags, :through => :taggings
  has_many :listed_pictures, :as => :listed
  has_many :lists, :through => :listed_pictures
  
  def title
    text[0..50]
  end
end
