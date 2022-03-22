# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

product = Product.new(name: "table", price: 20, description: "four legs and a flat surface")
product.save

product = Product.new(name: "chair", price: 15, description: "four legs and a flat surface for sitting")
product.save

product = Product.new(name: "plate", price: 5, description: "put your food here")
product.save

product = Product.new(name: "fork", price: 2, description: "stab food and put in your mouth")
product.save