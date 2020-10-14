package com.bowling.bowling;

public class Game {

  private int[] rolls = new int[21];
  private int currRollIndex = 0;

  public void roll(int pins) {
    rolls[currRollIndex++] = pins;
  }

  public int score() {
    int score = 0;
    // for loop to cehck for spares
    // for loop to cehck for strikes
//    for (int i = 1; i < currRollIndex; i += 1) {
//      score += rolls[i];
//    }

    for (int i = 0; i < currRollIndex; i += 2) {
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
    private int roll1 = 0;
    private int roll2 = 0;

    public boolean isStrike() {
      return roll1  == 10 || roll2 == 10; // TBD is one or other other?
    }
    public boolean isSpare() {
      return (roll1 + roll2 == 10) && !isStrike();
    }
  }
}