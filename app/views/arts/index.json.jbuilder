json.array!(@arts) do |art|
  json.extract! art, :id, :name, :description, :image
  json.url art_url(art, format: :json)
end
