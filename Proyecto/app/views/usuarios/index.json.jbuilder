json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :nombre, :password, :tipoDeSangre, :telefono, :direccion
  json.url usuario_url(usuario, format: :json)
end
