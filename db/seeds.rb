# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# db/seeds.rb

["lemon", "ice", "mint leaves", "sugar", "gin", "water"].each do |name|
  Ingredient.create(name: name)
end

puts "should add photo to this seed"

['white russian', 'old fashioned', 'gin and tonic'].each do |name|
  Cocktail.create(name: name)
end


Dose.create(description: '1 kube', ingredient: Ingredient.find_by(name: 'sugar'), cocktail: Cocktail.find_by(name: 'white russian'))
Dose.create(description: '1 spoon', ingredient: Ingredient.find_by(name: 'gin'), cocktail: Cocktail.find_by(name: 'gin and tonic'))
Dose.create(description: '1 kube', ingredient: Ingredient.find_by(name: 'ice'), cocktail: Cocktail.find_by(name: 'old fashioned'))
Dose.create(description: '1 cl', ingredient: Ingredient.find_by(name: 'water'), cocktail: Cocktail.find_by(name: 'white russian'))
