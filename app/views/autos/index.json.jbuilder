json.array!(@autos) do |auto|
  json.extract! auto, :id, :Marca, :Modelo, :Año, :Placa, :Capacidad
  json.url auto_url(auto, format: :json)
end
