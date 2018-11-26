json.extract! game, :id, :nombre, :anio, :estado, :consola, :categoria, :created_at, :updated_at
json.url game_url(game, format: :json)
