# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
One.delete_all


One.create!([
  {id: 1, versionnumber: 1.0, incident: "one", modifications: "first change"},
  {id: 2, versionnumber: 1.0, incident: "one", modifications: "second change"},
  {id: 3, versionnumber: 1.1, incident: "two", modifications: "first change"},
  {id: 4, versionnumber: 1.2, incident: "three", modifications: "one change"},
  {id: 6, versionnumber: 1.0, incident: "one", modifications: "one one change"},
  {id: 5, versionnumber: 1.0, incident: "one", modifications: "third change"}
  
  ])