class StoreFacebookId < ActiveRecord::Migration
  def up
    add_column :users, :facebook_id, :integer
  end

  def down
    remove_column :users, :facebook_id
  end
end
