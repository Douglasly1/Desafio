json.extract! visitante, :id, :nome, :cpf, :rg, :tel, :data_hora, :concluida, :foto, :setor_id, :created_at, :updated_at
json.url visitante_url(visitante, format: :json)
