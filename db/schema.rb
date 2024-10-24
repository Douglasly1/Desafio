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

ActiveRecord::Schema[7.1].define(version: 2024_10_22_223900) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "profissionals", force: :cascade do |t|
    t.string "nome"
    t.bigint "setor_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "cpf"
    t.string "rg"
    t.string "telefone"
    t.bigint "unidade_id"
    t.string "cargo"
    t.integer "user_id"
    t.index ["setor_id"], name: "index_profissionals_on_setor_id"
    t.index ["unidade_id"], name: "index_profissionals_on_unidade_id"
  end

  create_table "setors", force: :cascade do |t|
    t.string "nome"
    t.bigint "unidade_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["unidade_id"], name: "index_setors_on_unidade_id"
  end

  create_table "unidades", force: :cascade do |t|
    t.string "nome"
    t.string "endereco"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "visitantes", force: :cascade do |t|
    t.string "nome"
    t.string "cpf"
    t.string "rg"
    t.string "tel"
    t.boolean "concluida"
    t.string "foto"
    t.bigint "setor_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "data"
    t.time "hora_inicial"
    t.time "hora_termino"
    t.index ["setor_id"], name: "index_visitantes_on_setor_id"
  end

  add_foreign_key "profissionals", "setors"
  add_foreign_key "profissionals", "unidades"
  add_foreign_key "setors", "unidades"
  add_foreign_key "visitantes", "setors"
end
