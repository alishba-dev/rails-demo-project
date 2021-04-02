class CreateTables < ActiveRecord::Migration[5.2]
  def change
    create_table :tables do |t|
      t.integer :legs
      t.integer :top
      t.string :material

      t.timestamps
    end
  end
end
