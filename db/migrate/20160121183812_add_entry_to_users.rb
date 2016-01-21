class AddEntryToUsers < ActiveRecord::Migration
  def change
    add_column :users, :entry, :text
    add_index :users, :entry, unique: true
  end
end
