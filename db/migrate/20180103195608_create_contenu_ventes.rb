class CreateContenuVentes < ActiveRecord::Migration[5.1]
  def change
    create_table :contenu_ventes do |t|
      t.references :vente, foreign_key: true
      t.references :produit, foreign_key: true
      t.string :nom_pro
      t.integer :qte_pro
      t.decimal :montant

      t.timestamps
    end
  end
end
