class ListsCanIncludeNotes < ActiveRecord::Migration
  def up
    add_column :listed_pictures, :listed_type, :string
    rename_column :listed_pictures, :picture_id, :listed_id
  end

  def down
  end
end
