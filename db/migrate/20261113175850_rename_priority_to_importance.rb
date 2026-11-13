class RenamePriorityToImportance < ActiveRecord::Migration[8.1]
  def change
    # rename_column :table_name, :old_column_name, :new_column_name
    rename_column :ideas, :priority, :importance
  end
end
