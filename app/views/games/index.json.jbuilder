json.array!(@games) do |game|
  json.extract! game, :id, :title, :description, :reducedPrice, :sale
  json.url game_url(game, format: :json)
end
