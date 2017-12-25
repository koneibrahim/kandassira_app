json.extract! vente, :id, :date_vente, :client_id, :somme, :payee, :created_at, :updated_at
json.url vente_url(vente, format: :json)
