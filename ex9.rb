customers = [
  {"name" => "Pedro", "age" => 19, "item" => "apple", "starsign" => "cancer"},
  {"name" => "Jay", "age" => 25, "item" => "banana", "starsign" => "Gemini"},
  {"name" => "Mary", "age" => 29, "item" => "Grape", "starsign" => "Aries"},
]

puts "Customers over 20:"
customers.each do |customer|
  if customer["age"] >= 20
    puts peop["name"]
    puts peop["age"]
    puts peop["item"]
    puts peop["starsign"]
    puts "=" * 10
  end
end
