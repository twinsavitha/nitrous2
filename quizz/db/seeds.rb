# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Article.delete_all
Quiz.delete_all
Employee.delete_all
Article.create!([
  {id: 1, question: "x=10; This implies x is:", optiona: "Value", optionb: "Class", optionc: "Object", optiond: " "},
  {id: 2, question: "What are collect and map methdos?", optiona: "Methods of array", optionb: "Methods to loop through an array", optionc: "Methods whose return values are in the form of an array", optiond: "All the above"},
  {id: 3, question: "If a=[1,2,3,4,5,6,7,8]; puts a(2...5) gives?", optiona: "[2,3,4,5]", optionb: "[3,4,5,6]", optionc: "[3,4,5]", optiond: "[3,4]"},
  {id: 4, question: "code(later)", optiona: "Printed", optionb: "Not printed", optionc: "that code never gets executed", optiond: " "},
  {id: 5, question: "If i || = 2, puts i gives?", optiona: "Undefined variable", optionb: "0", optionc: "1", optiond: "2"}
  
  ])
Quiz.create!([
  {id: 1, question: "x=10; This implies x is:", optiona: "Value", optionb: "Class", optionc: "Object", optiond: " ", answer: "Object"},
  {id: 2, question: "What are collect and map methdos?", optiona: "Methods of array", optionb: "Methods to loop through an array", optionc: "Methods whose return values are in the form of an array", optiond: "All the above", answer: "All the above"},
  {id: 3, question: "If a=[1,2,3,4,5,6,7,8]; puts a(2...5) gives?", optiona: "[2,3,4,5]", optionb: "[3,4,5,6]", optionc: "[3,4,5]", optiond: "[3,4]", answer: "[3,4,5]"},
  {id: 4, question: "code(later)", optiona: "Printed", optionb: "Not printed", optionc: "that code never gets executed", optiond: " ", answer: "Not printed"},
  {id: 5, question: "If i || = 2, puts i gives?", optiona: "Undefined variable", optionb: "0", optionc: "1", optiond: "2", answer: "2"}
  
  ])
Employee.create!([
  {id: 1, empid: "837460", name: "Savitha", attempts: '0'},
  {id: 2, empid: "837596", name: "Saritha", attempts: '0'},
  {id: 3, empid: "839213", name: "Raj", attempts: '0'},
  {id: 4, empid: "759004", name: "Kunal", attempts: '0'},
  {id: 5, empid: "831044", name: "Maha", attempts: '0'}
  
  ])
