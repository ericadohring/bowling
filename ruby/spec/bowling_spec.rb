load 'lib/game.rb'

describe "BowlingScoreRecorder" do

  describe "a game with no strikes or spares" do
    it "incrementally records the frame score" do
      bowling_score_recorder = BowlingScoreRecorder.new

      expect(bowling_score_recorder.frames).to eq([])
      bowling_score_recorder.record_frame(num_pins_roll_1: 7, num_pins_roll_2: 2)
      expect(bowling_score_recorder.frames).to eq([{ score: 9, is_strike: false, is_spare: false }])
      bowling_score_recorder.record_frame(num_pins_roll_1: 6, num_pins_roll_2: 1)
      expect(bowling_score_recorder.frames).to eq([
                                                    { score: 9, is_strike: false, is_spare: false },
                                                    { score: 7, is_strike: false, is_spare: false },
                                                  ])

    end

    it "records the frame scores for all frames and raises an error if you go out of bounds" do
      frames = [
        { num_pins_roll_1: 7, num_pins_roll_2: 2 }, # 9
        { num_pins_roll_1: 6, num_pins_roll_2: 2 }, # 8
        { num_pins_roll_1: 5, num_pins_roll_2: 3 }, # 8
        { num_pins_roll_1: 3, num_pins_roll_2: 1 }, # 4
        { num_pins_roll_1: 0, num_pins_roll_2: 0 }, # 0
        { num_pins_roll_1: 1, num_pins_roll_2: 0 }, # 1
        { num_pins_roll_1: 9, num_pins_roll_2: 0 }, # 9
        { num_pins_roll_1: 0, num_pins_roll_2: 8 }, # 8
        { num_pins_roll_1: 2, num_pins_roll_2: 7 }, # 9
        { num_pins_roll_1: 2, num_pins_roll_2: 4 } # 6
      ]

      expected_scores = [9, 8, 8, 4, 0, 1, 9, 8, 9, 6]

      bowling_score_recorder = BowlingScoreRecorder.new # could also populate with -1 # depends

      frames.each_with_index do |frame, index|
        bowling_score_recorder.record_frame(**frame)
        actual = bowling_score_recorder.frames[index]
        expected = { score: expected_scores[index], is_spare: false, is_strike: false }
        expect(actual).to eq(expected)
      end

      # Raises when you go outside the bounds
      extra_frame = { num_pins_roll_1: 7, num_pins_roll_2: 2 }
      expect { bowling_score_recorder.record_frame(extra_frame) }.to raise_error(RuntimeError)
    end
  end

  # Cummulative score? We seem to do round score right now
  # What about the last one being a spare?
  describe "a game with spares" do
    it "incrementally records the frame score" do
      bowling_score_recorder = BowlingScoreRecorder.new

      expect(bowling_score_recorder.frames).to eq([])
      bowling_score_recorder.record_frame(num_pins_roll_1: 7, num_pins_roll_2: 3)
      expect(bowling_score_recorder.frames).to eq([{ score: 10, is_strike: false, is_spare: true }])
      bowling_score_recorder.record_frame(num_pins_roll_1: 6, num_pins_roll_2: 1)
      expect(bowling_score_recorder.frames).to eq([
                                                    { score: 17, is_strike: false, is_spare: true },
                                                    { score: 7, is_strike: false, is_spare: false }])
    end
  end
end

