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

ActiveRecord::Schema.define(version: 20160818014413) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alumnos", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "edad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "curso_id"
  end

  add_index "alumnos", ["curso_id"], name: "index_alumnos_on_curso_id", using: :btree

  create_table "carreras", force: :cascade do |t|
    t.string   "nombreCarrera"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "cursos", force: :cascade do |t|
    t.string   "nombre"
    t.date     "fecha"
    t.float    "precio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lists", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "lists", ["user_id"], name: "index_lists_on_user_id", using: :btree

  create_table "salons", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "curso_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "salons", ["curso_id"], name: "index_salons_on_curso_id", using: :btree

  create_table "tasks", force: :cascade do |t|
    t.string   "title"
    t.string   "note"
    t.boolean  "completed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "list_id"
  end

  add_index "tasks", ["list_id"], name: "index_tasks_on_list_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "lastname"
    t.string   "username"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "edad"
    t.string   "correo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "carrera_id"
  end

  add_index "usuarios", ["carrera_id"], name: "index_usuarios_on_carrera_id", using: :btree

  add_foreign_key "alumnos", "cursos"
  add_foreign_key "lists", "users"
  add_foreign_key "salons", "cursos"
  add_foreign_key "tasks", "lists"
  add_foreign_key "usuarios", "carreras"
end
