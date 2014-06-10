class AddFirstAndLastColumnsToReaders < ActiveRecord::Migration
  def up
    add_column :readers, :first_name, :string
    add_column :readers, :last_name, :string
  end

  def down
    remove_column :readers, :first_name, :string
    remove_column :readers, :last_name, :string
  end
end
