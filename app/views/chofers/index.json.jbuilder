json.array!(@chofers) do |chofer|
  json.extract! chofer, :id, :Nombre, :Apellido, :Auto, :Direccion, :Telefono
  json.url chofer_url(chofer, format: :json)
end
