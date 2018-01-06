json.extract! contenu_vente, :id, :vente_id, :produit_id, :nom_pro, :type_pro, :qte_pro, :montant, :created_at, :updated_at
json.url contenu_vente_url(contenu_vente, format: :json)
