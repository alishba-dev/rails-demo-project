class CreateCandidates < ActiveRecord::Migration[5.2]
  def change
    create_table :candidates do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.date :dob
      t.string :hobby

      t.timestamps
    end
  end
end
