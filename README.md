# Bowling Kata 
Article: http://butunclebob.com/ArticleS.UncleBob.TheBowlingGameKata

Slides: https://speakerdeck.com/artenes/the-bowling-game-kata-in-java

## Approach 
- We focused on trying to follow the kata as written, as opposed to solving the problem and then looking back at Uncle Bob's Approach
- We tried to take note of what the kata was trying to teach, what it did well, what it didn't do well, etc 

## Reflections
#### 09/30/2020
After we finished about an hour of the kata, the participants reflected on the experience:
- We appreciated how Simon Parker nudged us to predict what would happen next
- We aligned to use a language that folks in the office use most frequently (Java, Javascript)
- The kata encouraged us to focus on the context "the goal is not to solve the problem, the goal is to get better at solving problems"
- Discussion of when to refactor tests: "refactoring" has many definitions. Normally, we'd like to refactor under test cover, but how do you refactor 
your tests without tests? 
"Low Risk" refactors include renaming (most of the time - lack of typing can make things less reliable) and rearranging code, the latter of which this 
kata does. You opt to trust the IDE
- Sets up an efficient feedback loop (code and test are side by side)
- Style is very similar to Kent Beck's TDD by Example, but with a clearer problem prompt
- After you do the simplest thing to make the test pass (for example, if your test expects 0, then just have the function 
return 0), there are 2 techniques to move along: triangulation and removing duplication between your code and test

#### 10/07/2020
- Styling on the slide deck is helpful - the green/red bar and the red for a compile error


### 10/14/2020
- It's odd we have to rollMany for the rest of the game - we think a better design
would be to pass in an array of rolls for the whole game, not allowing the user to enter an invalid state
OR to allow them to see a partially done score - modeling as an object, etc
- His code with frame index is confusing
- Left off trying to implement frames to see if that would be an easier concept to work with