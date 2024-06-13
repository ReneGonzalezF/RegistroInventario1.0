class Producto < ApplicationRecord
    validates :nombre, presence: true
    validates :descripcion, presence: true
    validates :cantidad, presence: true, numericality: { only_integer: true }
    validates :precio, presence: true, numericality: true
    validates :low_stock_threshold, presence: true, numericality: { only_integer: true }
    validates :sku, presence: true, uniqueness: true, format: { with: /\A[A-Za-z]\d{9}\z/, message: "debe tener 1 letra seguida de 9 números" }
    def low_stock?
      cantidad < low_stock_threshold
    end
    def self.producto_params(params)
      params.require(:producto).permit(:nombre, :descripcion, :cantidad, :precio, :low_stock_threshold, :sku)
    end
  end
  
  