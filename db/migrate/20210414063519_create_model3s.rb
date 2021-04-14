class CreateModel3s < ActiveRecord::Migration[5.2]
  def change
    create_table :model3s do |t|

      t.timestamps
    end
  end
end
