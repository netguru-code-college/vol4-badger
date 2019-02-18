# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Course.create({name: "Matematyka Stosowana", description: "to jest opis kursu", category_id: 1})
Course.create({name: "Medycyna pracy", description: "to jest opis kursu", category_id: 2})
Course.create({name: "Biologia molekularna", description: "to jest opis kursu", category_id: 3})
Category.create({name: "Matematyka"})
Category.create({name: "Medycyna"})
Category.create({name: "Biologia"})

Student.create({email: "test1@wp.pl", password: "password1"})
Student.create({email: "test2@wp.pl", password: "password2"})