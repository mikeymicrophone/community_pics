class PictureHasPhotoFile < ActiveRecord::Migration
  def change
    add_column :pictures, :photo_file, :string
  end
end
