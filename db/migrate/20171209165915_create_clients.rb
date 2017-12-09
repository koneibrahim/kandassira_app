class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.datetime :date_nai
      t.string :contact

      t.timestamps
    end
  end
end
