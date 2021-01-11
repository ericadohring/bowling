class BowlingScoreRecorder
  attr_accessor :frames, :curr_frame_index

  def initialize
    @frames = []
    @curr_frame_index = 0
  end

  def record_frame(num_pins_roll_1:, num_pins_roll_2: )
    raise "Game over" if @curr_frame_index == 10
    args = { num_pins_roll_1: num_pins_roll_1,
             num_pins_roll_2: num_pins_roll_2 }
      frames[curr_frame_index] =    {
      score: calculate_score(args),
      is_spare: is_spare(args),
      is_strike: is_strike(args)
    }
    @curr_frame_index += 1
  end

  def calculate_score(args)
    args[:num_pins_roll_1] + args[:num_pins_roll_2]
  end

  def is_strike(args)
    return true if args[:num_pins_roll_1] == 10
    false
  end

  def is_spare(args)
    return true if args[:num_pins_roll_1] + args[:num_pins_roll_2] == 10 && !is_strike(args)
    false
  end
end