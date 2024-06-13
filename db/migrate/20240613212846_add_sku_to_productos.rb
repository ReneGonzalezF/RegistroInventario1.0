class AddSkuToProductos < ActiveRecord::Migration[7.1]
  def change
    add_column :productos, :sku, :string
    
  end
end
