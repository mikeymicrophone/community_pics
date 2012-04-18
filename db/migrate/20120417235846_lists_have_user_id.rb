class ListsHaveUserId < ActiveRecord::Migration
  def up
    add_column :lists, :user_id, :integer
  end

  def down
  end
end
