json.extract! user, :id, :nome, :status, :created_at, :updated_at
json.url user_url(user, format: :json)
