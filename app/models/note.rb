class Note < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :taggings, :as => :taggable
  has_many :tags, :through => :taggings
  
  def title
    text[0..50]
  end
end
