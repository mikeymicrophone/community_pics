class StoreFacebookId < ActiveRecord::Migration
  def change
    add_column :users, :facebook_id, :integer
  end
end
