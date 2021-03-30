class AddSkuNumberToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :sku_number, :string
    #we created a new migration here, saying that add a column sku_number in products table
  end
end
