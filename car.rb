class Car
  def initialize(make, age, top_speed, gas_tank_size, permilage)
    @make = make
    @age = age
    @top_speed = top_speed
    @gas_tank_size = gas_tank_size
    @fuel = gas_tank_size
    @permilage = permilage
  end

  attr_accessor :make, :age, :top_speed, :gas_tank_size, :fuel, :permilage

  def depleteFuel(kms)
    @fuel = @fuel - (kms * permilage)
  end
end

class Driver
  def initialize(name, car, age)
    @name = name
    @car = car
    @age = age
  end

  attr_accessor :name, :car, :age

end

person = Driver.new("John", Car.new("Toyota", 1988, 220, 15000, 2), 7)

puts person.car.gas_tank_size
puts person.car.depleteFuel(20)
puts person.car.fuel
