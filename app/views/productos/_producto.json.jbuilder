json.extract! producto, :id, :nombre, :descripcion, :cantidad, :precio, :created_at, :updated_at
json.url producto_url(producto, format: :json)
