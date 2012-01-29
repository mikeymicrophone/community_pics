class ListedPicture < ActiveRecord::Base
  belongs_to :list
  belongs_to :picture
  
  acts_as_list :scope => :list_id
end
