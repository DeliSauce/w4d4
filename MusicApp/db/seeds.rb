# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

aero = Band.create!(name: "Aerosmith")
guns = Band.create!(name: "GunsNRoses")
u2 = Band.create!(name: "U2")
metallica = Band.create!(name: "Metallica")

u2album1 = Album.create!(name: "Rattle and Hum", band_id: u2.id)
u2album2 = Album.create!(name: "Achtung Baby", live: true, band_id: u2.id)

rattle_track_1 = Track.create!(name: "Desire", bonus: false, lyrics: "NA", album_id: u2album1.id)
rattle_track_2 = Track.create!(name: "Angel of Harlem", bonus: false, lyrics: "NA", album_id: u2album1.id)
rattle_track_3 = Track.create!(name: "When Love Comes to Town", bonus: false, lyrics: "NA", album_id: u2album1.id)

achtung_track_1 = Track.create!(name: "The Fly", bonus: false, lyrics: "NA", album_id: u2album2.id)
achtung_track_2 = Track.create!(name: "Mysterious Ways", bonus: false, lyrics: "NA", album_id: u2album2.id)
