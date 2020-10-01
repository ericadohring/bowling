## Bowling Kata in Ruby
http://butunclebob.com/ArticleS.UncleBob.TheBowlingGameKata

# Getting Started # 
```bundle install```

Alternatively for particular gems

```gem install the-gem-name```

# Run Tests # 
```rspec```

# Approach 
- We focused on trying to follow the kata as written, as opposed to solving the problem and then looking back at Uncle Bob's Approach
- We tried to take note of what the kata was trying to teach, what it did well, what it didn't do well, etc 

# Reflections
After we finished about an hour of the kata, the participants reflected on the experience:
- We appreciated how Simon nudged us to predict what would happen next
- We aligned to use a language that folks in the office use most frequently (Java, Javascript)
- The kata encouraged us to focus on the context "the goal is not to solve the problem, the goal is to get better at solving problems"
- Discussion of when to refactor tests
- "Refactoring" has many definitions. Normally, we'd like to refactor under test cover, but how do you refactor your tests without tests? 
"Low Risk" refactors include renaming (most of the time) and rearranging code, the latter of which this kata does. You opt to trust the IDE.
- Sets up an efficient feedback loop (code and test are side by side)
- Style is very similar to TDD by Example, but with a clearer problem prompt
- After you do the simplest thing to make the test pass (for example, if your test expects 0, then just have the function 
return 0), there are 2 techniques to move along: triangulation and removing duplication between your code and test
