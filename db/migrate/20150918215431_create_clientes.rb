class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :Nombre
      t.string :DNI
      t.integer :Telefono

      t.timestamps null: false
    end
  end
end
