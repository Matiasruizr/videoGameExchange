json.extract! usuario, :id, :id, :nombre, :apellido, :nombre_usuario, :contrasena, :rut, :direccion, :sexo, :celular, :codigo_postal, :fecha_nacimiento, :id_comuna, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
