class CreateListedPictures < ActiveRecord::Migration
  def change
    create_table :listed_pictures do |t|
      t.belongs_to :list
      t.belongs_to :picture

      t.timestamps
    end
    add_index :listed_pictures, :list_id
    add_index :listed_pictures, :picture_id
  end
end
