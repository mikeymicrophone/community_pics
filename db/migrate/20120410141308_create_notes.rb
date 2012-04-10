class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.text :text
      t.integer :user_id

      t.timestamps
    end
  end
end
