# Add the following methods to this burrito class and
# call the methods below the class:
# 1. add_topping
# 2. remove_topping
# 3. change_protein

class Burrito
  attr_accessor :protein, :base, :toppings
  def initialize(protein, base, toppings)
    @protein  = protein
    @base     = base
    @toppings = toppings
  end

  def add_toppings(topping)
    self.toppings = toppings.insert(toppings.length, topping)
  end

  def remove_topping(number)
    toppings.delete_at(number)
    self.toppings = toppings
  end

  def change_protein(protein)
    self.protein = protein
  end

end

dinner = Burrito.new("Beans", "Rice", ["cheese", "salsa", "guacamole"])

puts "Original"
puts '-'*10
puts dinner.protein
puts dinner.base
p dinner.toppings

puts "Modified"
puts '-'*10
dinner.add_toppings("Jalapenos")
dinner.remove_topping(1)
dinner.change_protein("Steak")

puts dinner.protein
puts dinner.base
print dinner.toppings
