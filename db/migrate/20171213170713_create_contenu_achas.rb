class CreateContenuAchas < ActiveRecord::Migration[5.1]
  def change
    create_table :contenu_achas do |t|
      t.string :nom_pro
      t.integer :qte_pro
      t.references :achat, foreign_key: true
      t.decimal :montant
      t.references :produit, foreign_key: true

      t.timestamps
    end
  end
end
