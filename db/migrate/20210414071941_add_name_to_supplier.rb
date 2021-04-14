class AddNameToSupplier < ActiveRecord::Migration[5.2]
  def change
    add_column :suppliers, :name, :string
  end
end
