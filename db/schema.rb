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

ActiveRecord::Schema.define(version: 20170828024944) do

  create_table "cargas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "cajas"
    t.float "costoManejo", limit: 24
    t.float "alto", limit: 24
    t.float "ancho", limit: 24
    t.float "largo", limit: 24
    t.float "pesoEstimado", limit: 24
    t.string "direccion"
    t.float "valorAsegurado", limit: 24
    t.string "nombreDestinatario"
    t.string "telefonoDestinatario"
    t.integer "recibeSabados"
    t.float "flete", limit: 24
    t.float "fleteTotal", limit: 24
    t.string "guia"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_cargas_on_user_id"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "user"
    t.string "password"
    t.integer "level"
    t.string "token"
    t.integer "nit"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

  add_foreign_key "cargas", "users"
end
