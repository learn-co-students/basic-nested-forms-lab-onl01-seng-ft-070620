class Recipe < ActiveRecord::Base
  has_many :ingredients 

  def ingredients_attributes=(ingredients_attributes)
    ingredients_attributes.values.each do |ingredient_attributes| 
      if ingredient_attributes[:name] != ""
        self.ingredients.build(ingredient_attributes)
      end
    end
  end

end
