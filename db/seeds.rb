# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Picture.create(title: 'Panda', picture_url:'http://s.hswstatic.com/gif/panda-sleep-2.jpg')

ZoomLevel.create(level:1, rows:2, columns:2)
ZoomLevel.create(level:2, rows:4, columns:4)