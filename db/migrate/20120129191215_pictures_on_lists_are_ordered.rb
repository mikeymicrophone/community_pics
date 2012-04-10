class PicturesOnListsAreOrdered < ActiveRecord::Migration
  def up
    add_column :listed_pictures, :position, :integer
  end

  def down
    remove_column :listed_pictures, :position
  end
end
