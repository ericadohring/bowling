## Reflections
From group practice

#### 09/30/2020
After we finished about an hour of the kata, the participants reflected on the experience:
- We appreciated how [Simon Parker](https://github.com/simon-parker)
  nudged us to predict what would happen next
- We tried this round in ruby, but noted that doing the kata in a languag that almost everyone in the office is really familiar
  with (Java, Javascript) would be easier
- The kata encouraged us to focus on the context "the goal is not to solve the problem, the goal is to get better at solving problems"
- Discussion of when to refactor tests: "refactoring" can have man definitions. Normally, we'd like to refactor code (logic) under
  test cover, but how do you refactor your tests without tests? "Low Risk" refactors include renaming (most of the time -
  absence of typing can make things less reliable) and rearranging code, the latter of which this kata does. You opt to trust
  the IDE.
- Sets up an efficient feedback loop (code and test are side by side)
- Style is very similar to [Kent Beck's TDD by Example](https://www.amazon.com/Test-Driven-Development-Kent-Beck/dp/0321146530),
  but with a clearer problem prompt
- After you do the simplest thing to make the test pass (for example, if your test expects 0, then just have the function
  return 0), there are 2 techniques to move along: triangulation and removing duplication between your code and test

#### 10/07/2020
- Styling on the slide deck is helpful - the green/red bar and the red for a compile error

#### 10/14/2020
- We paused here because Uncle Bob went with a design we felt was a little unintuitive. We think a better design may
  be to pass an array of rolls for the whole game, not allowing the user to enter an invalid state OR allow them to see a partially-done
  score.
- His code with frame index is confusing
- Left off trying to implement frames to see if that would be an easier concept to work with

In the end, we disagreed enough with the design that we deviated from the kata.
We feel we got a pretty good sense of what it was trying to teach and how.