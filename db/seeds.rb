# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Allow me to run this over and over
Team.destroy_all

Team.create([
	{name: 'Lakers', city: 'Los Angeles', pg: 'Steve Nash', sg: 'Kobe Bryant', sf: 'Nick Young', pf: 'Chris Kaman', ctr: 'Pau Gasol'},
	{name: 'Clippers', city: 'Los Angeles'},
	{name: 'Warriors', city: 'Golden State'}
	])