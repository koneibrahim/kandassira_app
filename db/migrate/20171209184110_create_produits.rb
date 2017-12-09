class CreateProduits < ActiveRecord::Migration[5.1]
  def change
    create_table :produits do |t|
      t.string :nom_pro
      t.string :type_pro
      t.integer :prix
      t.integer :qte_pro

      t.timestamps
    end
  end
end
