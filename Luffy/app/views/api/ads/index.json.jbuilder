json.array! @ads do |ad|
  json.id ad.id
  json.ad_cd_id ad.ad_cd_id
  json.ad_title ad.ad_title
  json.ad_start_dt ad.ad_start_dt
  json.ad_end_dt ad.ad_end_dt
  json.bus_stop_id ad.bus_stop_id
  json.ad_det_id ad.ad_det_id
end
