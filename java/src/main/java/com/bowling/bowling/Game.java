package com.bowling.bowling;

public class Game {
    private int[] rolls = new int[21];
    private int currRollIndex = 0;

    public void roll(int pins) {
        rolls[currRollIndex++] = pins;
    }

    public int score() {
        int score = 0;
        for (int i = 0; i < currRollIndex; i += 2) {
            score += isSpare(i)
                    ? 2 * rolls[i]
                    : rolls[i];
            if ((i + 1) < rolls.length) score += rolls[i + 1];

        }
        return score;
    }

    boolean isSpare(int indexAtStartOfFrame) {
        return (indexAtStartOfFrame > 1 && rolls[indexAtStartOfFrame - 2] + rolls[indexAtStartOfFrame - 1] == 10);
    }

}