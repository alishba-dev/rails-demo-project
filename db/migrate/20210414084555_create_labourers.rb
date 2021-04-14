class CreateLabourers < ActiveRecord::Migration[5.2]
  def change
    create_table :labourers do |t|

      t.timestamps
    end
  end
end
