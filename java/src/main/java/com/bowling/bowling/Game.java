package com.bowling.bowling;

import java.util.ArrayList;
import java.util.List;

public class Game {

  private int[] rolls = new int[21];
  private int currRollIndex = 0;

  public void roll(int pins) {
    rolls[currRollIndex++] = pins;
  }

  public int score() {
    int score = 0;

    // Generate Frames
    List<Frame> frames = new ArrayList();
    int roll1Index = 0;
    int roll2Index = 1;
    // while loop - goes through all the rolls - if 10 -> construct frame
    // that way - sep loop
    for (int i = 0; i < 20; i += 2) {
      frames.add(new Frame(rolls[i], rolls[i+1]));
      // first roll
      score += (isPreviousFrameStrike(i) || isPreviuousFrameSpare(i))
          ? 2 * rolls[i]
          : rolls[i];

      // Second roll
      if ((i + 1) < rolls.length) {
        score += isPreviousFrameStrike(i)
            ? 2 * rolls[i + 1]
            : rolls[i + 1];
      }

    }
    return score;
  }

  boolean isPreviuousFrameSpare(int indexAtStartOfFrame) {
    return (indexAtStartOfFrame > 1
        && rolls[indexAtStartOfFrame - 2] + rolls[indexAtStartOfFrame - 1] == 10);
  }

  boolean isPreviousFrameStrike(int indexAtStartOfFrame) {
    return (indexAtStartOfFrame > 1
        && rolls[indexAtStartOfFrame - 1] == 10);
  }

  private static class Frame {

    public Frame(int roll1, int roll2) {
      this.roll1 = roll1;
      this.roll2 = roll2;
    }

    private int roll1 = 0;
    private int roll2 = 0;

    public boolean isStrike() {
      return roll1  == 10 || roll2 == 10; // TBD is one or other other?
    }
    public boolean isSpare() {
      return (roll1 + roll2 == 10) && !isStrike();
    }
    public int score() {
      return roll1 + roll2;
    }
  }
}