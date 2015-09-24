class CreateAutos < ActiveRecord::Migration
  def change
    create_table :autos do |t|
      t.string :Marca
      t.string :Modelo
      t.date :Año
      t.string :Placa
      t.integer :Capacidad

      t.timestamps null: false
    end
  end
end
