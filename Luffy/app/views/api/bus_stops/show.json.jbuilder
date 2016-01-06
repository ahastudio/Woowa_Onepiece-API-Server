json.id @bus_stop.id
json.bus_stop_id @bus_stop.bus_stop_id
json.bus_stop_nm @bus_stop.bus_stop_nm
json.bus_stop_addr @bus_stop.bus_stop_addr
json.bus_stop_lng @bus_stop.bus_stop_lng
json.bus_stop_lat @bus_stop.bus_stop_lat
json.bus_stop_ads @bus_stop.ads do |ad|
  json.ad_id ad.id
  json.ad_cd_id ad.ad_cd_id
  json.ad_title ad.ad_title
  json.ad_start_dt ad.ad_start_dt
  json.ad_end_dt ad.ad_end_dt
end
