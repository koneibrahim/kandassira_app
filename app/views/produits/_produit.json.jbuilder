json.extract! produit, :id, :nom_pro, :type_pro, :prix, :qte_pro, :created_at, :updated_at
json.url produit_url(produit, format: :json)
