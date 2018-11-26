json.extract! publicacion, :id, :usuario, :nombreJuegoOfrece, :nombreJuegobusca, :comentarios, :created_at, :updated_at
json.url publicacion_url(publicacion, format: :json)
