class CreatePeaks < ActiveRecord::Migration[5.2]
  def change
    create_table :peaks do |t|
      t.float :peak_price

      t.timestamps
    end
  end
end
