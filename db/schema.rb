# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_02_21_003805) do

  create_table "empresas", force: :cascade do |t|
    t.string "nombre_comercial"
    t.string "razon_social"
    t.string "telefono"
    t.string "correo"
    t.string "nit"
    t.string "direccion"
    t.string "estado"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "evaluaciones", force: :cascade do |t|
    t.string "nombre"
    t.integer "preguntas"
    t.string "estado"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "imagenes", force: :cascade do |t|
    t.string "nombre"
    t.string "base64"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "preguntas", force: :cascade do |t|
    t.integer "evaluacion_id", null: false
    t.string "texto"
    t.string "correcta"
    t.string "estado"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["evaluacion_id"], name: "index_preguntas_on_evaluacion_id"
  end

  create_table "respuestas", force: :cascade do |t|
    t.string "nombre"
    t.integer "pregunta1"
    t.integer "pregunta2"
    t.integer "pregunta3"
    t.integer "pregunta4"
    t.integer "pregunta5"
    t.string "codigo"
    t.integer "nota"
    t.string "estado"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "nombre"
    t.string "estado"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "preguntas", "evaluaciones"
end
