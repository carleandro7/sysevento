json.extract! evento, :id, :nome, :status, :datainicio, :datafim, :created_at, :updated_at
json.url evento_url(evento, format: :json)
