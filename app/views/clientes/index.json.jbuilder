json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :Nombre, :DNI, :Telefono, :Direccion
  json.url cliente_url(cliente, format: :json)
end
