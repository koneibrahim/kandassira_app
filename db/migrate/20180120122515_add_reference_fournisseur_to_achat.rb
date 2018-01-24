class AddReferenceFournisseurToAchat < ActiveRecord::Migration[5.1]
  def change
    add_reference :achats, :fournisseur
  end
end
