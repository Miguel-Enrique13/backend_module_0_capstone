class MyCar
attr_accessor :model, :color, :year


def initialize(year, model, color)
  @year = year
  @model = model
  @color = color
  @current_speed =0
end

  def speed_up(number)
    @current_speed += number
    puts "You push the gas and accelerate #{number} mph."
  end

  def slow_down(number)
    @current_speed -= number
    puts "you push the break and decelrate #{number} mph."
  end

  def current_speed
    puts "You are now going #{@current_speed} mph."
  end


  def shut_off
    @current_speed = 0
    puts "Let's park this bad boy"
  end

  def info
    puts "My car is a #{@year} #{@model} and is the color #{color}"
  end

  def spray_paint(color)
    self.color = color
    puts "Nice paint job, the #{color} looks great"
  end

  def buy_new(year, model, color)
    self.year = year
    self.model = model
    self.color = color
    puts "I just bought a new #{year} #{model} and is the color #{color}"
  end

end

  Miguel = MyCar.new(2012, 'Santa Fe', 'Bronze')
  Miguel.speed_up(30)
  Miguel.current_speed
  Miguel.slow_down(20)
  Miguel.current_speed
  Miguel.slow_down(10)
  Miguel.current_speed
  Miguel.shut_off

  Miguel.info
  Miguel.spray_paint('red')
  Miguel.info
  Miguel.buy_new(2019, "Ferrari", "red")
  Miguel.info
