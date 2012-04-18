class List < ActiveRecord::Base
  has_many :listed_pictures, :order => "position"
  has_many :pictures, :through => :listed_pictures
  belongs_to :user
end
