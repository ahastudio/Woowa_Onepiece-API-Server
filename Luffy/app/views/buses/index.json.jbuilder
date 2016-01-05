json.array!(@buses) do |bus|
  json.extract! bus, :id, :bus_id, :bus_nm
  json.url bus_url(bus, format: :json)
end
