json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :Nombre, :Apellido, :DNI, :Telefono, :Direccion, :Correo, :Usuario, :Contraseña
  json.url cliente_url(cliente, format: :json)
end
