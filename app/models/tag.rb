class Tag < ActiveRecord::Base
  has_many :taggings
  has_many :pictures, :through => :taggings
  
  validates_uniqueness_of :name
end
