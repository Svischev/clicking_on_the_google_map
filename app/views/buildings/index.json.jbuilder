json.array!(@buildings) do |building|
  json.extract! building, :address, :coordinate_lat, :coordinate_lng
  json.url building_url(building, format: :json)
end