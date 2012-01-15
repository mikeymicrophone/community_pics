class PictureHasPhotoFile < ActiveRecord::Migration
  def up
    add_column :pictures, :photo_file, :string
  end

  def down
  end
end
