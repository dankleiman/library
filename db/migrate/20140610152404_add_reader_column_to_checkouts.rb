class AddReaderColumnToCheckouts < ActiveRecord::Migration
 def up
    add_column :checkouts, :reader_id, :integer, null: false
  end

  def down
    remove_column :checkouts, :reader_id, :integer
  end
end
