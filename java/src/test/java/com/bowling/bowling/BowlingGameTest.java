package com.bowling.bowling;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class BowlingGameTest {
    private Game g;

    @BeforeEach
    protected void setUp() {
        g = new Game();
    }

    private void rollMany(int n, int pins) {
        for (int i = 0; i< n; i ++) {
            g.roll(pins);
        }
    }

    @Test
    void testGutterGame() {
        rollMany(20, 0);
        assertEquals(0, g.score());
    }

    @Test
    void testAllOnes() {
        rollMany(20, 1);
        assertEquals(20, g.score());
    }

    @Test
    void testOneSpare() {
        rollSpare();
        g.roll(5);
        g.roll(1);
        rollMany(17, 0);
        assertEquals(21, g.score());
    }

    void rollSpare() {
        g.roll(5);
        g.roll(5); // spare
    }

    @Test
    void testOneStrike() {
        g.roll(10);
        g.roll(4);
        g.roll(3);
        rollMany(16, 0);
        assertEquals(24, g.score());
    }
}