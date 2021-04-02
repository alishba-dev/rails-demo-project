class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.string :name
      t.integer :age
      t.text :bio
      t.string :email

      t.timestamps
    end
  end
end
