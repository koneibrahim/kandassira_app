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

ActiveRecord::Schema.define(version: 20180120122515) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "achats", force: :cascade do |t|
    t.date "date_ac"
    t.integer "id_fo"
    t.integer "somme"
    t.integer "payee"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "fournisseur_id"
    t.index ["fournisseur_id"], name: "index_achats_on_fournisseur_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.datetime "date_nai"
    t.string "contact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contenu_achas", force: :cascade do |t|
    t.string "nom_pro"
    t.string "type_pro"
    t.integer "qte_pro"
    t.bigint "achat_id"
    t.decimal "montant"
    t.bigint "produit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "total"
    t.index ["achat_id"], name: "index_contenu_achas_on_achat_id"
    t.index ["produit_id"], name: "index_contenu_achas_on_produit_id"
  end

  create_table "contenu_ventes", force: :cascade do |t|
    t.bigint "vente_id"
    t.bigint "produit_id"
    t.string "nom_pro"
    t.string "type_pro"
    t.integer "qte_pro"
    t.decimal "montant"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["produit_id"], name: "index_contenu_ventes_on_produit_id"
    t.index ["vente_id"], name: "index_contenu_ventes_on_vente_id"
  end

  create_table "fournisseurs", force: :cascade do |t|
    t.string "nom_fo"
    t.string "adresse_fo"
    t.string "company"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "produits", force: :cascade do |t|
    t.string "nom_pro"
    t.string "type_pro"
    t.integer "prix"
    t.integer "qte_pro"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ventes", force: :cascade do |t|
    t.datetime "date_vente"
    t.bigint "client_id"
    t.decimal "somme"
    t.decimal "payee"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_ventes_on_client_id"
  end

  add_foreign_key "contenu_achas", "achats"
  add_foreign_key "contenu_achas", "produits"
  add_foreign_key "contenu_ventes", "produits"
  add_foreign_key "contenu_ventes", "ventes"
  add_foreign_key "ventes", "clients"
end
