class CreateModel2s < ActiveRecord::Migration[5.2]
  def change
    create_table :model2s do |t|

      t.timestamps
    end
  end
end
