class CreateAchats < ActiveRecord::Migration[5.1]
  def change
    create_table :achats do |t|
      t.date :date_ac
      t.integer :id_fo
      t.integer :somme
      t.integer :payee

      t.timestamps
    end
  end
end
