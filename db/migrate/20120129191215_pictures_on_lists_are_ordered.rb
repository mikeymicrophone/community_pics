class PicturesOnListsAreOrdered < ActiveRecord::Migration
  def change
    add_column :listed_pictures, :position, :integer
  end
end
