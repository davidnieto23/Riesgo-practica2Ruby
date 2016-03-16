json.array!(@posts) do |post|
  json.extract! post, :id, :sangre, :comentario, :solved, :usuario_id, :usuarios_id
  json.url post_url(post, format: :json)
end
