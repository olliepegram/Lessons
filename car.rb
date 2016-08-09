class Car
  def initialize(make, age, top_speed, gas_tank_size)
    @make = make
    @age = age
    @top_speed = top_speed
    @gas_tank_size = gas_tank_size
  end

  attr_accessor :make, :age, :top_speed, :gas_tank_size

end

class Driver
  def initialize(car, age, contact)
    @car = car
    @age = age
    @contact = contact
  end

attr_accessor :car, :age, :contact

end



car = Car.new("Toyota", 11, 220, 30000)

puts car.make
puts car.age
