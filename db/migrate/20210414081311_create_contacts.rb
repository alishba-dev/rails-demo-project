class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :phone_number
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
