## 1. Describe the Problem

As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO.

## 2. Design the Method Signature

```ruby
task = task_tracker(text)

* task variable confirms whether text includes string => true 
* text - a random string 


```

## 3. Create Examples as Tests

```ruby

task_tracker("hello") => false 
task_tracker("wash the dishes #TODO") => true 
task_tracker("wash the pans #todo") => false 
task_tracker("") => false 
task_tracker("#pans") => false

```

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
