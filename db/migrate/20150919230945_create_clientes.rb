class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :Nombre
      t.string :Apellido
      t.string :DNI
      t.string :Telefono
      t.text :Direccion
      t.string :Correo
      t.string :Usuario
      t.string :Contraseña

      t.timestamps null: false
    end
  end
end
