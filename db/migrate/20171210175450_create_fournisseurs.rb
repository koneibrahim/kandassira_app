class CreateFournisseurs < ActiveRecord::Migration[5.1]
  def change
    create_table :fournisseurs do |t|
      t.string :nom_fo
      t.string :adresse_fo
      t.string :company

      t.timestamps
    end
  end
end
