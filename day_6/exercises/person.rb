# Create a person class with at least 2 attributes and 2 behaviors.
# Call all person methods below the class and print results
# to the terminal that show the methods in action.

# YOUR CODE HERE

class Person
  attr_reader :height, :weight

def initialize (height, weight)
  @height = height
  @weight = weight
  @walk = true
  @hunger = true
end

def move
  @walk = true
  @hunger = true
  p "I am Moving"
end

def sit
  @walk = false
  p "I am sitting"
end

def eat
  @hunger = false
  p "I am eating"
end

def hunger_Status
  if @hunger == true
    p "Imma eat sumthing cuz I AM HUNGRAY"
  else
    p "Nah, I'm NOT hungry"
  end
end

end

miguel = Person.new(70, 180)
miguel.move
miguel.hunger_Status
miguel.eat
miguel.hunger_Status
