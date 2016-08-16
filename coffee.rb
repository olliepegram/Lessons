require 'artii'
require 'paint'
ASCII = Artii::Base.new

class Person
  def initialize(name, job, hours_productive, weight)
    @name = name
    @job = job
    @hours_productive = hours_productive
    @weight = weight
  end
  attr_accessor :name, :job, :hours_productive, :weight
end

#if route equals heartattack then make the calculation 150 x weight, else times by 4.
def calculation(route)
  route == :heartattack ? quantity = 150 * @weight : quantity = 4 * @weight
end

#Takes the result from the calculation and divides by 80.
def calculate_cups(quantity)
  (quantity / 80).round
end

def mainMenu
  system('clear')
  puts ASCII.asciify("Coffee")
  puts "The purpose of this is too see how much coffee \nyou can have in a day without dying."
  puts "First of all let me ask you a couple of questions:"
  puts "What's your name?"
  @userName = gets.chomp
  system('clear')
  puts "What's your job?"
  puts "1. Developer"
  puts "2. Everyone else"
  @userJob = gets.chomp
  system('clear')
  puts "How many hours will you be needing to be productive today?"
  @hours = gets.chomp.to_i
  system('clear')
  puts "How much do you weigh?"
  @weight = gets.chomp.to_i
  system('clear')
  puts "What route would you like to go?"
  puts "1. #{Paint['Safe route(recommened)', :blue]}"
  puts "2. #{Paint['Heart attack route', :red]}"
  @route = gets.chomp
end

mainMenu
guy = Person.new(@userName, @userJob, @hours, @weight)

  # if they choose route 1 then load safe route calculation, if not load heartattack.
  @route == '1' ? mills = calculation(:safe) : mills = calculation(:heartattack)
  #If they choose route 1 then then use the blue color, if not use the red color.
  @route == '1' ? colour = :blue : colour = :red

  #if they pick 1 for their job then the calculation is multiplied by 1.5.
  @userJob == 1 ? multiplier = 1.5 : multiplier = 1
  system('clear')
  puts "\n"
  puts "So, #{Paint[@userName, :green]}, here is your coffee intake for the day: "
  puts "You can have: "
  sleep(0.7)
  puts "#{Paint[mills * multiplier, colour]} mg of caffine"
  sleep(0.7)
  puts "#{Paint[calculate_cups(mills), colour]} coffee cups"
  sleep(0.7)
  puts "within #{Paint[@hours, colour]} hours."
  puts "\n"

  if @route == '2'
    sleep(3)
    puts "Incoming heart attack!"
    sleep(1)
    calculate_cups(mills).times do
      print Paint["COFFEE".center(rand(0..120)), Paint.random, Paint.random(true), :bright]
      sleep(0.3)
    end
  end
