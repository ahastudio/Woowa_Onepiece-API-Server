json.array! @imgs do |img|
  json.id img.id
  json.ad_id img.ad_id
  json.img_nm_user img.img_nm_user
  json.img_nm_server img.img_nm_server
  json.img_size img.img_size
  json.img_up_path img.img_up_path
  json.img_dn_path img.img_dn_path
end
