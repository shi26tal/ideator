class ChangeImportanceToString < ActiveRecord::Migration[8.1]
  def change
    # change_column :table_name, :column_name, :new_data_type
    change_column :ideas, :importance, :string
  end
end
