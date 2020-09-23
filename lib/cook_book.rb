require 'date'

class CookBook
  attr_reader :recipes
  def initialize
    @recipes = []
  end

  def add_recipe(recipe)
    @recipes << recipe
  end

  def ingredients
    array = []
    @recipes.each do |recipe|
      recipe.ingredients.each do |ingredient|
        array << ingredient.name
      end
    end
    array.uniq
  end

  def highest_calorie_meal
    x = @recipes.max_by do |recipe|
      recipe.total_calories
    end
    x
  end

  def date
    date = Date.today
    new_date = date.strftime('%m-%d-%Y')
    new_date
  end
end