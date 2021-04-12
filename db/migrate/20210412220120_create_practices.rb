class CreatePractices < ActiveRecord::Migration[5.2]
  def change
    create_table :practices do |t|
      t.string :name
      t.text :content
      t.integer :random_id

      t.timestamps
    end
  end
end
