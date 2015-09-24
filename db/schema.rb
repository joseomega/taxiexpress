# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150923140724) do

  create_table "autos", force: :cascade do |t|
    t.string   "Marca",      limit: 255
    t.string   "Modelo",     limit: 255
    t.date     "Año"
    t.string   "Placa",      limit: 255
    t.integer  "Capacidad",  limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "chofers", force: :cascade do |t|
    t.string   "Nombre",     limit: 255
    t.string   "Apellido",   limit: 255
    t.string   "DNI",        limit: 255
    t.text     "Direccion",  limit: 65535
    t.string   "Telefono",   limit: 255
    t.integer  "auto_id",    limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "chofers", ["auto_id"], name: "index_chofers_on_auto_id", using: :btree

  create_table "clientes", force: :cascade do |t|
    t.string   "Nombre",     limit: 255
    t.string   "Apellido",   limit: 255
    t.string   "DNI",        limit: 255
    t.string   "Telefono",   limit: 255
    t.text     "Direccion",  limit: 65535
    t.string   "Correo",     limit: 255
    t.string   "Usuario",    limit: 255
    t.string   "Contraseña", limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_foreign_key "chofers", "autos"
end
