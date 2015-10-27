# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


references = Reference.create(
	[
		{ url: 'http://www.imdb.com', time: ''},
		{ url: 'http://www.rambo.com', time: ''} 
	]
)

topics = Topic.create(
	[
		{ title: 'Rocky Balboa', description: 'This movie is the fucking best', reference_id: references[0].id},
		{ title: 'Rambo: First Bloot', description: 'This movie is also the fucking best', reference_id: references[1].id}
	]
)
