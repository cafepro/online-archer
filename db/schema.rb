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

ActiveRecord::Schema.define(version: 20160209162400) do

  create_table "amigos", id: false, force: true do |t|
    t.integer "iduser",              null: false
    t.integer "idamigo",             null: false
    t.integer "estado",  default: 0, null: false
  end

  create_table "headers", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.text     "used_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "material", primary_key: "usuario", force: true do |t|
    t.string "palas",     limit: 200
    t.string "potencia",  limit: 200
    t.string "cuerpo",    limit: 200
    t.string "tamano",    limit: 200
    t.string "flechas",   limit: 200
    t.string "visor",     limit: 200
    t.string "boton",     limit: 200
    t.string "fistmelle", limit: 200
    t.string "cuerda",    limit: 200
  end

  create_table "modalidades", force: true do |t|
    t.string "nombre", limit: 50, null: false
  end

  create_table "rondas", force: true do |t|
    t.integer "sesion",                            null: false
    t.integer "ronda",                             null: false
    t.integer "distancia",                         null: false
    t.string  "flecha1",   limit: 2, default: "M"
    t.string  "flecha2",   limit: 2, default: "M"
    t.string  "flecha3",   limit: 2, default: "M"
  end

  create_table "sesiones", force: true do |t|
    t.integer "usuario",                             null: false
    t.string  "modalidad",   limit: 25,              null: false
    t.string  "fecha",       limit: 15,              null: false
    t.string  "hora",        limit: 15,              null: false
    t.integer "puntuacion",                          null: false
    t.integer "tipotirada",                          null: false
    t.integer "public",                  default: 0, null: false
    t.text    "comentarios"
    t.string  "nombre",      limit: 100
    t.string  "media",       limit: 10
    t.integer "competicion",             default: 0, null: false
    t.integer "grafica",                 default: 1, null: false
    t.integer "enlazado",                default: 0, null: false
  end

  create_table "tipotirada", force: true do |t|
    t.string  "nombre",     limit: 300, null: false
    t.integer "dist1",                  null: false
    t.integer "dist2"
    t.integer "dist3"
    t.integer "dist4"
    t.string  "dia1",       limit: 50,  null: false
    t.string  "dia2",       limit: 50
    t.string  "dia3",       limit: 50
    t.string  "dia4",       limit: 50
    t.integer "numflechas",             null: false
  end

  create_table "users", force: true do |t|
    t.string   "email",                            default: "", null: false
    t.string   "encrypted_password",               default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                    default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "old_id",                 limit: 8
    t.string   "name"
    t.date     "birth_date"
    t.string   "sex"
    t.string   "discipline"
    t.string   "license"
    t.string   "photo"
    t.string   "state"
    t.integer  "admin"
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "usuarios", force: true do |t|
    t.string  "mail",        limit: 100,                          null: false
    t.string  "keyword",     limit: 50,                           null: false
    t.string  "nombre",      limit: 100,                          null: false
    t.string  "apellidos",   limit: 200
    t.string  "fechanac",    limit: 25
    t.string  "sexo",        limit: 10
    t.string  "modalidad",   limit: 25
    t.string  "nacional",    limit: 25
    t.string  "regional",    limit: 25
    t.integer "activo",                  default: 0,              null: false
    t.string  "foto",        limit: 100, default: "droide.png",   null: false
    t.string  "tuestado",    limit: 100, default: ""
    t.string  "fechamod",    limit: 25,  default: "1900-1-1-0-0", null: false
    t.integer "recibirmail",             default: 1,              null: false
    t.integer "admin",                   default: 0,              null: false
  end

end
