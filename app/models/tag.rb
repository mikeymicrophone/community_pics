class Tag < ActiveRecord::Base
  has_many :taggings
  # has_many :taggables, :through => :taggings
  
  validates_uniqueness_of :name
  
  scope :alphabetical, :order => 'name desc'
  scope :limited, :limit => 5
  
  def taggables
    taggings.map &:taggable
  end
end
