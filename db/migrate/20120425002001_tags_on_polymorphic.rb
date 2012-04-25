class TagsOnPolymorphic < ActiveRecord::Migration
  def up
    add_column :taggings, :taggable_type, :string
    rename_column :taggings, :picture_id, :taggable_id
    
    Tagging.update_all :taggable_type => 'Picture'
  end

  def down
  end
end
