class Celsuis
  def initialize(temperature)
    @temperature = temperature
  end

  def convert
    @convert = @temperature*1.8 + 32.round
  end

end

days = {"Sun" => 16, "Mon" => 22, "Tues" => 33, "Wed" => 24, "Thurs" => 12, "Fri" => 16, "Sat" => 32}

puts "-" * 50
days.each { |key ,value|
  temp = Celsuis.new(value)
  puts "Celsius: #{key} is #{value} | Fahrenheit: #{key} is #{temp.convert}"
}
puts "-" * 50
