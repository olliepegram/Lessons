class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

#getter
  def getName
    return @name
  end

  def getAge
    return @age
  end

#setter
  def setName(name)
    @name = name
  end

  def setAge
    @age = 12
  end

end

puts "Whats your name?"
userName = gets.chomp

john = Person.new("John", 40)

name = john.setName(userName)
age = john.setAge

puts "The name of the person is #{name} and his age is #{age}"
