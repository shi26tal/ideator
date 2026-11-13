class CreateIdeas < ActiveRecord::Migration[8.1]
  # change defines the database changes we want Rails to perform.
  def change
    create_table :ideas do |t|
      t.text :description
      t.string :author
      t.timestamps
    end
  end
end

# he role of migration files is to specify what tables and columns we need to add or change in the database.
