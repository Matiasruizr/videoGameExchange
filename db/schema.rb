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

ActiveRecord::Schema.define(version: 2018_11_26_024640) do

  create_table "comunas", force: :cascade do |t|
    t.string "nombre"
    t.integer "id_provincia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games", force: :cascade do |t|
    t.string "nombre"
    t.integer "anio"
    t.string "estado"
    t.string "consola"
    t.string "categoria"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "provincia", force: :cascade do |t|
    t.string "nombre"
    t.integer "id_region"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "publicacions", force: :cascade do |t|
    t.string "usuario"
    t.string "nombreJuegoOfrece"
    t.string "nombreJuegobusca"
    t.text "comentarios"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "regions", force: :cascade do |t|
    t.string "nombre"
    t.integer "id_pais"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "nombre_usuario"
    t.string "rut"
    t.string "celular"
    t.string "sexo"
    t.string "codigo_postal"
    t.date "fecha_nacimiento"
    t.string "comuna"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.string "nombre_usuario"
    t.string "contrasena"
    t.string "rut"
    t.string "direccion"
    t.string "sexo"
    t.integer "celular"
    t.integer "codigo_postal"
    t.date "fecha_nacimiento"
    t.integer "id_comuna"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
