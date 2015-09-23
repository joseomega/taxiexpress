class CreateChofers < ActiveRecord::Migration
  def change
    create_table :chofers do |t|
      t.string :Nombre
      t.string :Apellido
      t.string :Auto
      t.text :Direccion
      t.string :Telefono

      t.timestamps null: false
    end
  end
end
