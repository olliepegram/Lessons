class Progress
  def initialize(start, finish)
    @start = start
    @finish = finish
    @counting = 0
  end

  def start
    @start
  end

  def counting
    @counting
  end

  def finish
    @finish
  end

    def prog
      @counting = @start + 1
      @start = @counting
      puts "Day = #{counting} / #{finish}"
    end
end
