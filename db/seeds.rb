# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
queen = Artist.create(name: "Queen")
mumford = Artist.create(name: "Mumford & Sons")

Song.create(title: "Killer Queen", artist: queen)
Song.create(title: "We are the Champions", artist: queen)
Song.create(title: "Awake My Soul", artist: mumford)
Song.create(title: "Thompson Square Park", artist: mumford)
