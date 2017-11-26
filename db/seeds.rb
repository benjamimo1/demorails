# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
song1 = Song.create!(name:"Happyland",album_id: 1,length: 66,genre:"Rock n roll", user_id: 1)
album1 = Album.create!(name: "Black Sun",songnumber: 13 ,artist_id: 1, user_id: 1)
artist1 = Artist.create!(
description: "Artista super brigido",
genre: "Rock n roll",
origin: "Chile",
yearsactive: "1993-present",
members: "Solo",
name: "Joaco el maquina", user_id: 1)
admin1 = User.create!(name: "hi", email: "hi@hi.cl",
 image_url: "http://cdn.revistagq.com/uploads/images/thumbs/201541/rafa_nadal_5093_645x485.jpg",
  password_digest: "$2a$10$OPxma3tC/LzerN9THgOEnOk6aLAgx5V9BnlpxUsK/RYeEfkEP3IyG")