class AddReferencesToModel3 < ActiveRecord::Migration[5.2]
  def change
    add_reference :model3s, :model1, foreign_key: true
    add_reference :model3s, :model2, foreign_key: true
  end
end
