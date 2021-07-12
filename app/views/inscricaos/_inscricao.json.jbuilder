json.extract! inscricao, :id, :nome, :cpf, :email, :datanascimento, :evento_id, :created_at, :updated_at
json.url inscricao_url(inscricao, format: :json)
