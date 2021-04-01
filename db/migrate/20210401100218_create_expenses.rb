class CreateExpenses < ActiveRecord::Migration[5.2]
  def change
    create_table :expenses do |t|
      t.string :title
      t.decimal :amount

      t.timestamps
    end
  end
end
