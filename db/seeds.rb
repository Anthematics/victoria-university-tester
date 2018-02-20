# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Picture.create(
  name:  'Jason Jason',
  url:    'http://bitmakerlabs.s3.amazonaws.com/photogur/house.jpg'
)

Teacher.create!(name:"ben frank", body: "ben frank teaches teaching stuff",title:"headteacherguy", Picture_id => 1)
