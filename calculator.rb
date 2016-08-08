result = 0
def add(a,b)
 result = a + b
end

def subtract(a,b)
  result = a - b
end

def multiply(a,b)
  result = a * b
end

def divide(a,b)
  result = a / b
end

puts "Welcome to RubyCalc"
print "Enter first number: "
  a = gets.chomp.to_i
print "Enter operation (+, -, *, /): "
  operator = gets.chomp
print "Enter second number: "
  b = gets.chomp.to_i

if operator == "+"
  result = add(a,b)
elsif operator == "-"
  result = subtract(a,b)
elsif operator == "*"
  result = multiply(a,b)
elsif operator == "/"
  result = divide(a,b)
end


puts "The result is: #{result}"
