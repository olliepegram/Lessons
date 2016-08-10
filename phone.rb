class Phone
  def initialize(type, battery_size, hours_on_phone)
    @type = type
    @battery_size = battery_size
    @battery = battery_size
    @hours_on_phone = hours_on_phone
  end

  attr_accessor :type, :battery_size, :battery, :hours_on_phone

  def battery_use(activity)
    usageHash = [:texting => 1, :youtube => 2, :gaming => 3]
    @battery = @battery - (@hours_on_phone * usageHash[activity])
  end

end

class Person
  def initialize(name, phone)
    @name = name
    @phone = phone
  end

  attr_accessor :name, :phone

end

class Numeric
  def percent_of(n)
    self.to_f / n.to_f * 100.0
  end
end

puts "How many hours have you used your phone for?"
hours = gets.chomp.to_i

guy = Person.new("Ollie", Phone.new("Motorolla", 10 , hours))

puts guy.phone.battery_use()

# print "You have "
# print guy.phone.battery_use(gets.chomp.to_i).percent_of(guy.phone.battery_size(gets.chomp.to_i))
# puts "% remaining battery on your #{guy.phone.type}"
