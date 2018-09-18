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

ActiveRecord::Schema.define(version: 20180917230406) do

  create_table "estado_casos", force: :cascade do |t|
    t.integer "T_estado_caso_cuadrante_id"
    t.string "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["T_estado_caso_cuadrante_id"], name: "index_estado_casos_on_T_estado_caso_cuadrante_id"
  end

  create_table "t_estado_caso_cuadrantes", force: :cascade do |t|
    t.integer "t_muro_caso_id"
    t.string "cuadrante"
    t.string "id_estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["t_muro_caso_id"], name: "index_t_estado_caso_cuadrantes_on_t_muro_caso_id"
  end

  create_table "t_muro_comentarios", force: :cascade do |t|
    t.string "caso"
    t.string "descripcion"
    t.string "fecha_descripcion"
    t.integer "T_usuario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["T_usuario_id"], name: "index_t_muro_comentarios_on_T_usuario_id"
  end

  create_table "t_muros", force: :cascade do |t|
    t.string "img"
    t.string "descripcion"
    t.string "fecha_creacion"
    t.string "ubicacion"
    t.string "caso"
    t.integer "T_usuario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["T_usuario_id"], name: "index_t_muros_on_T_usuario_id"
  end

  create_table "t_pedagogia", force: :cascade do |t|
    t.string "titulo"
    t.string "descripcion"
    t.string "img"
    t.string "fecha_creacion"
    t.integer "T_usuario_id"
    t.integer "T_pedagogia_comentario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["T_pedagogia_comentario_id"], name: "index_t_pedagogia_on_T_pedagogia_comentario_id"
    t.index ["T_usuario_id"], name: "index_t_pedagogia_on_T_usuario_id"
  end

  create_table "t_pedagogia_comentarios", force: :cascade do |t|
    t.integer "T_pedagodia_id"
    t.string "descripcion"
    t.string "fecha_creacion"
    t.string "T_usuario_references"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["T_pedagodia_id"], name: "index_t_pedagogia_comentarios_on_T_pedagodia_id"
  end

  create_table "t_perfils", force: :cascade do |t|
    t.string "idPerfil"
    t.string "persona"
    t.string "cuadrante"
    t.string "fundacion"
    t.integer "T_usuario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["T_usuario_id"], name: "index_t_perfils_on_T_usuario_id"
  end

  create_table "t_usuarios", force: :cascade do |t|
    t.string "user"
    t.string "password"
    t.string "celular"
    t.string "direccion"
    t.string "zona"
    t.integer "T_perfil_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["T_perfil_id"], name: "index_t_usuarios_on_T_perfil_id"
  end

end
