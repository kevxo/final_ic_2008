class Ingredient
  attr_reader :name, :unit, :calories
  def initialize(recipe)
    @name = recipe[:name]
    @unit = recipe[:unit]
    @calories = recipe[:calories]
  end
end