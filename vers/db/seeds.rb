# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Firstt.delete_all
Varietyy.delete_all

Firstt.create!([
  {id: 1, eve: "one", modi: "first change"},
  {id: 2, eve: "two", modi: "second change"},
  {id: 3, eve: "three", modi: "third change"},
  {id: 4, eve: "four", modi: "fourth change"},
  {id: 5, eve: "five", modi: "fifth change"}
  
  ])
Varietyy.create!([
  {id: 1,versionn: "1.0", eventt: "one", changge: "first change"},
  {id: 2,versionn: "1.1", eventt: "two", changge: "first change"},
  {id: 3,versionn: "1.2", eventt: "three", changge: "first change"},
  {id: 4,versionn: "1.0", eventt: "four", changge: "second change"},
  {id: 5,versionn: "1.0", eventt: "five", changge: "third change"}
  ])
