class Meals
  def initialize(name)
    @name = name
  end
  attr_accessor :name
end

class Food
  def initialize(name, price)
    @name = name
    @price = price
    @item = item
  end
  attr_accessor :name, :price, :item

  def addItem
    item = Food.new([Food.new("Lemon", 29), Food.new("Potato", 604), Food.new("Lobster", 2)])
    item.each do |t|
      puts t.item
    end
  end
end

def menu
  system('clear')
  puts "Welcome to Ollie's fast food"
  puts "What would you like to do?"

  puts "1. Order food"
  puts "2. Compliment chef"
  puts "3. ...leave?"
  answer = gets.chomp.to_i

  if answer == 1
    var1 = Food.new("lemon", 29)
    var1.addItem
  elsif answer == 2

  else
    exit = true
  end
end
menu
