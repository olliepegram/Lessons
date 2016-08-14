require 'artii'

ASCII = Artii::Base.new :font => 'slant'
class People
  def initialize(name, job, preference, hours_productive, weight)
    @name = name
    @job = job
    @preference = preference
    @hours_productive = hours_productive
    @weight = weight
    @calc = calc
    @cup = cup
  end
  attr_accessor :name, :job, :preference, :hours_productive, :weight, :calc, :cup

  def calculate
    @calc = 4 * @weight

  #   for i in 1 do
  #     break if i == 80
  #   end
  end

  def heart_attack
    @calc1 = 150 * @weight
  end

  def cups
    @cup = 1
    @calc = 80

  end
end

class Coffee
  def initialize(type, milk)
    @type = type
    @milk = milk
  end
  attr_accessor :type, :milk

end

def mainMenu
  system('clear')
  puts ASCII.asciify("Coffee")
  puts "The purpose of this is too see how much coffee \nyou can have in a day without dying and when to have it."
  puts "First of all let me ask you a couple of questions:"
  puts "What's your name?"
  @userName = gets.chomp
  puts "What's your job?"
  puts "1. Developer"
  puts "2. Everyone else"
  @userJob = gets.chomp
  puts "What type of coffee do you drink?"
  @coffee = gets.chomp
  puts "How many hours will you be needing to be productive today?"
  @hours = gets.chomp.to_i
  puts "How much do you weigh?"
  @weight = gets.chomp.to_i
  system('clear')
  puts "What route would you like to go?"
  puts "1. Safe route(recommened)"
  puts "2. Heart attack route"
  @route = gets.chomp
end

mainMenu
guy = People.new(@userName, @userJob, Coffee.new(@coffee, "soy"), @hours, @weight)

if @route == '1'
  if @userJob == '1'
    puts "You can have #{guy.calculate * 1.5}mg of caffine within #{@hours} hours."
  else @userJob == '2'
    puts "You can have #{guy.calculate}mg of caffine withing #{@hours} hours."
  end
elsif @route == '2'
  if @userJob == '1'
    puts "You can have #{guy.heart_attack * 1.5}mg of caffine within #{@hours} hours."
  else @userJob == '2'
    puts "You can have #{guy.heart_attack}mg of caffine withing #{@hours} hours."
  end
end
