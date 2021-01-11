load 'lib/game.rb'

describe "BowlingScoreRecorder" do

  describe "a game with no strikes or spares" do
    it "incrementally records the frame score" do
      bowling_score_recorder = BowlingScoreRecorder.new

      expect(bowling_score_recorder.frames).to eq([])
      bowling_score_recorder.record_frame(num_pins_roll_1: 7, num_pins_roll_2: 2)
      expect(bowling_score_recorder.frames).to eq([{score: 9, is_strike: false, is_spare: false}])
      bowling_score_recorder.record_frame(num_pins_roll_1: 6, num_pins_roll_2: 1)
      expect(bowling_score_recorder.frames).to eq([
                                                    {score: 9, is_strike: false, is_spare: false},
                                                    {score: 7, is_strike: false, is_spare: false},
                                                  ])

    end
  end
end

