require './banking.rb'

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
    @battery = @battery - (@hours_on_phone * usageHash[activity] )

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
puts "What application were you using?"
app = gets.chomp.to_i

guy = Person.new("Ollie", Phone.new("Motorolla", 100 , hours))

puts guy.phone.battery_use(app)
end

filename = 'balance.txt'
txt = open(filename, 'r+')
number = File.read(filename).to_i

amount = Bank_account.new(number)

puts "Would you like to charge your phone for $20?"
answer = gets.chomp

if answer == "yes"
  amount.balance = amount.balance - 20
  puts amount.balance
else
  puts "k"
end

txt.write(amount.balance)
txt.rewind
txt.close


# print "You have "
# print guy.phone.battery_use(gets.chomp.to_i).percent_of(guy.phone.battery_size(gets.chomp.to_i))
# puts "% remaining battery on your #{guy.phone.type}"
