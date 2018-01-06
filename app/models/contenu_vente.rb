class ContenuVente < ApplicationRecord
  belongs_to :vente
  belongs_to :produit
end
