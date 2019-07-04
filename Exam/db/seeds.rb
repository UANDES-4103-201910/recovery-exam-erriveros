# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
OrderItem.delete_all
Order.delete_all
Pizza.delete_all
RecipeIngredient.delete_all

Ingredient.delete_all
Ingredient.create! id:1, name: "Tomatoe"
Ingredient.create! id:2, name: "Cheese"
Ingredient.create! id:3, name: "Mushroom"
Ingredient.create! id:4, name: "Peperoni"


Crust.delete_all
Crust.create! id:1, name: "Thin", price: 0.50
Crust.create! id:2, name: "Thick", price: 1.00

Recipe.delete_all
Recipe.create! id:1, name: "Napolitana" ,price:10.50
Recipe.create! id:2, name: "Queso" ,price:5.50
Recipe.create! id:3, name: "Mushroom Peperoni", price:10.50

RecipeIngredient.create! id:1, recipe_id:1, ingredient_id:1
RecipeIngredient.create! id:2, recipe_id:1, ingredient_id:2
RecipeIngredient.create! id:3, recipe_id:1, ingredient_id:4
RecipeIngredient.create! id:4, recipe_id:2, ingredient_id:2
RecipeIngredient.create! id:5, recipe_id:3, ingredient_id:2
RecipeIngredient.create! id:6, recipe_id:3, ingredient_id:3
RecipeIngredient.create! id:7, recipe_id:3, ingredient_id:4

Pizza.create! id:1, recipe_id:1, crust_id:1
Pizza.create! id:2, recipe_id:2, crust_id:1
Pizza.create! id:3, recipe_id:3, crust_id:1
Pizza.create! id:4, recipe_id:1, crust_id:2
Pizza.create! id:5, recipe_id:2, crust_id:2
Pizza.create! id:6, recipe_id:3, crust_id:2
