class AddSkuNumberToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :sku_number, :string
    #we created a new migration here, saying that add a column sku_number in products table
    add_index :products, :sku_number
  end
end
=begin
  # To add new migration
  rails generate migration AddSkuNumberToProducts sku_number
  # To add index also
  rails generate migration AddSkuNumberToProducts sku_number:string:index
=end
