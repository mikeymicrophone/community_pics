class Tagging < ActiveRecord::Base
  belongs_to :tag
  belongs_to :picture
  
  validates_uniqueness_of :tag_id, :scope => :picture_id
  validates_presence_of :tag_id, :picture_id
end
