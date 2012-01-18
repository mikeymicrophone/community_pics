class Tag < ActiveRecord::Base
  has_many :taggings
  has_many :pictures, :through => :taggings
end
