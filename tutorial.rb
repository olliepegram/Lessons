class Tutorial
  def initialize(name, type, difficulty)
    @name = name
    @type = type
    @difficulty = difficulty
  end

  def name
    @name
  end

  def type
    @type
  end

  def difficulty
    @difficulty
  end

  def is_harder_than?(tutorial)
    @tutorial = tutorial
    difficulties = {:easy => 1, :medium => 2, :hard => 3, :advanced => 4, :expert => 5}

    if type != @tutorial.type
      puts "You cannot compare a #{type} with a #{@tutorial.type} tutorial"
      elsif difficulties[difficulty] > difficulties[tutorial.difficulty]
        puts true
      else
        puts false
      end
    end
  end


tutorial1 = Tutorial.new("Object Oriented Ruby", :ruby, :medium)
tutorial2 = Tutorial.new("Introduction to JavaScript", :javascript, :easy)
tutorial3 = Tutorial.new("HTTP Requests, AJAX and APIs", :javascript, :medium)

tutorial1.is_harder_than?(tutorial2)
# You cannot compare a Ruby with a JavaScript tutorial

tutorial2.is_harder_than?(tutorial1)
# You cannot compare a JavaScript with a Ruby tutorial

tutorial2.is_harder_than?(tutorial3)
# false

tutorial3.is_harder_than?(tutorial2)
# true
