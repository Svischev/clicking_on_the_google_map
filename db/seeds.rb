# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Building.delete_all
Building.create([
  { address: 'Колпачный пер., 13', coordinate_lat: 55.755813, coordinate_lng: 37.642405 },
  { address: 'Ул. Бахрушина, 2/5', coordinate_lat: 55.736981, coordinate_lng: 37.63374 }
])