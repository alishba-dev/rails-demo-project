class CreateEngineers < ActiveRecord::Migration[5.2]
  def change
    create_table :engineers do |t|
      t.string :fullname
      t.string :mobile_number

      t.timestamps
    end
  end
end
