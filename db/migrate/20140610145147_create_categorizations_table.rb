class CreateCategorizationsTable < ActiveRecord::Migration
  def change
    create_table :categorizations do |table|
      table.integer :category_id, null: false
      table.integer :book_id, null: false
    end
    add_index :categorizations, [:category_id, :book_id], unique: true
  end
end
