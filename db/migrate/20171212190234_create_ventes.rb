class CreateVentes < ActiveRecord::Migration[5.1]
  def change
    create_table :ventes do |t|
      t.datetime :date_vente
      t.references :client, foreign_key: true
      t.decimal :somme
      t.decimal :payee

      t.timestamps
    end
  end
end
