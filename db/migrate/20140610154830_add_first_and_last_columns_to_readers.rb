class AddFirstAndLastColumnsToReaders < ActiveRecord::Migration
  def up
    add_column :readers, :first_name, :string
    add_column :readers, :last_name, :string

    Reader.find_each do |reader|
      full_name = reader.name.split(' ')

      reader.first_name = full_name[0]
      reader.last_name = full_name[1]
    end


  end

  def down
    remove_column :readers, :first_name, :string
    remove_column :readers, :last_name, :string
  end
end
