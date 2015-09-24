json.array!(@chofers) do |chofer|
  json.extract! chofer, :id, :Nombre, :Apellido, :DNI, :Direccion, :Telefono, :auto_id
  json.url chofer_url(chofer, format: :json)
end
