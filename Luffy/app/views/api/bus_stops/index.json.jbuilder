json.array! @bus_stops do |bus_stop|
  json.id bus_stop.id
  json.bus_stop_id bus_stop.bus_stop_id
  json.bus_stop_nm bus_stop.bus_stop_nm
  json.bus_stop_addr bus_stop.bus_stop_addr
  json.bus_stop_lng bus_stop.bus_stop_lng
  json.bus_stop_lat bus_stop.bus_stop_lat
end
