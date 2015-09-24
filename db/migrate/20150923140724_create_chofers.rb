class CreateChofers < ActiveRecord::Migration
  def change
    create_table :chofers do |t|
      t.string :Nombre
      t.string :Apellido
      t.string :DNI
      t.text :Direccion
      t.string :Telefono
      t.references :auto, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
