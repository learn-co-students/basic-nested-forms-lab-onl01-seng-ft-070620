class Recipe < ActiveRecord::Base
  has_many :ingredients 
  accepts_nested_attributes_for :ingredients
end



# Recipe(title: string)
# Ingredient(name: string, quantity: string, recipe_id: integer) 

# {
#   recipe: {
#     title: "Lemon Chicken",
#     ingredients_attributes: {
#       0 => {
#         name: "lemon",
#         quatity: "2"
#       },
#       1 => {
#         name: "chicken",
#         quatity: "1"
#       }
#     }
#   }
# }