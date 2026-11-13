class AddPriorityToIdeas < ActiveRecord::Migration[8.1]
  def change
    # This tells Rails to add an integer column named priority to the ideas table.
    # syntax
    # add_column(table_name, column_name, data_type)
    add_column :ideas, :priority, :integer
  end
end
