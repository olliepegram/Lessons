class Celsuis
  def initialize(temperature)
    @temperature = temperature
  end

  def convert
    @convert = @temperature*1.8 + 32.round
  end

end

class Day
  def initialize(name, temperature)
    @name = name
    @temperature = temperature
  end

  def name
    @name
  end

  def temperature
    @temperature
  end
  def self.all
    ObjectSpace.each_object(self).to_a
  end

end

puts "Enter the temperature"
cals = gets.chomp.to_i

days = ["Sun", "Mon", "Tues", "Wed", "Thurs", "Fri", "Sat"]

days.each do |current|
  puts "hey, what temp is it on #{current}"
  Day.new(current, Celsuis.new(gets.chomp.to_i))
end

alldays = Day.all

alldays.each do |current|
  puts current.temperature.convert
end
