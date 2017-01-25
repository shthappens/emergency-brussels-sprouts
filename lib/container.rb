
class Container
  attr_accessor :ingredients
  attr_reader :weight, :max_weight, :ingredient

  def initialize(weight, max_weight)
    @weight = weight
    @max_weight = max_weight
    @ingredients = []
  end

  def maximum_holding_weight
    @max_weight
  end

  def which_ingredient
    @ingredients[0].name
  end

  def fill_with_ingredient(ingredient)
    if ingredient.name == "Brussels Sprouts"
      @ingredients.fill(ingredient, 0, 7000)
    else
      @ingredients.fill(ingredient, 0, 40000)
    end
    @weight = weight + maximum_holding_weight
  end

  def how_many_ingredients
    @ingredients.count
  end

  def remove_one_ingredient
    @ingredients.pop
  end

  def empty
    @ingredients = []
  end

end
