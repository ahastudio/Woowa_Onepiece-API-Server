json.array! @buses do |bus|
  json.id bus.id
  json.bus_id bus.bus_id
  json.bus_nm bus.bus_nm
  json.bus_dow_nm bus.bus_dow.bus_dow_nm
end
