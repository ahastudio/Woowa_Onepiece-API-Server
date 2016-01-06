# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Bus.create(
  bus_id: 'B1',
  bus_nm: '37번',
  bus_dow_id: 1
)

BusDow.create(
  bus_dow_nm: '월',
  dow_cd_id: 1
)

BusStop.create(
  bus_stop_id: 'BS1',
  bus_stop_nm: '이호2동',
  bus_stop_addr: '제주시 이호이동 1380',
  bus_stop_lng: '126.4569673',
  bus_stop_lat: '33.4908272'
)
