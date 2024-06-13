class AddLowStockThresholdToProductos < ActiveRecord::Migration[7.1]
  def change
    add_column :productos, :low_stock_threshold, :integer
  end
end
