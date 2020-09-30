class Game
  attr_accessor :some_variable

  def initialize
    @some_variable = 0
  end

  def roll(num)
    @some_variable += num
  end

  def score
    @some_variable
  end
end