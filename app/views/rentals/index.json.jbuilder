json.array!(@rentals) do |rental|
  json.extract! rental, :id, :title, :cost
  json.url rental_url(rental, format: :json)
end
