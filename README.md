# Math Game

## Player Class

- There are two players. Player one, and player two.
- Each Player has 3 lives to begin.
- We need to provide read publicly to turn and total lives so they may be read by other classes.
- Decrement of player life should also happen here after a point loss.

## Question Class

- Should generate random math equation
- Produces the string question in the following format:
```Player 1: What does 5 plus 3 equal?```
- Produces the answer as a readable output to another class to pick it up


## Turn Class 

- Holds the state of the current_player for the main game loop to call upon.
- current_player has attr_reader so it can be read by Question Class

<!-- - Calls the method within the Question class that prints the question to terminal. 
- Takes the gets.chomp input of the current_player
- Compares the input against the result of Question class' method -->

- switch_turn method is something that changes the current_player to the other player initiating a new turn.
<!-- - switch_turn is writable, we want to be able to call it from the main game loop script, so it has an attr_writer attached to the class. -->
- switch_turn needs to only be called
- Along with the player change, The following is puts to terminal when switch_turn is run:
```----- NEW TURN -----```

- Turn class can manage curent player and the rest of the logic above could be handled in the main.rb file

## Math Game Class

- Runs the game loop
- Selects the player whose turn it is to answer
- Calls the method within the Question class that prints the question to terminal. 
- Takes the gets.chomp input of the current_player
- Compares the input against the result of Question class' method

- Until the result from input matches the result from the Question class, current_player does not lose a life
- If the result from input does not match the result from the Question class, current_player loses a life through calling the life_loss method from within the Player class

- Life total is then displayed on the screen for both players in the below format, regardless of the above resulting win or loss:
  ```P1: 2/3 vs P2: 3/3```

- Until one player has 0 life, the turn initiates the Question class again, switching to the player who just answered so that they can create a new question. This is done by calling switch_turn, a method in the Turn class

- If either player has 0 life left at this point, switch_turn does not initialize and the following is puts to terminal:

```----- GAME OVER -----```
```Good Bye!```