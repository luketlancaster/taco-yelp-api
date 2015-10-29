json.array!(@stores) do |store|
  json.extract! store, :places_id, :rating
  json.url store_url(store, format: :json)
end
