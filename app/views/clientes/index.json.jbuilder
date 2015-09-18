json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :Nombre, :DNI, :Telefono
  json.url cliente_url(cliente, format: :json)
end
