load 'lib/game.rb'


describe "BowlingGameSpec" do

  before(:each) do
    @g = Game.new
  end

  it "has a failing test to remind us to put something here" do
    expect( roll_many(20, 0)).to eq(0)
  end

  it "All ones gives a score of 20" do
    expect(roll_many(20, 1)).to eq(20)
  end

  it "Spare doubles next roll" do
    roll_many(2, 5)
    roll_many(1, 3)
    expect(roll_many(17, 0)).to eq(16)
  end

  def roll_many(times, pin)
    i = 0
    while (i < times)
      @g.roll(pin)
      i += 1
    end

    @g.score
  end
end

