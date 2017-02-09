# Has 3 main files
1. tennis_game.rb
2. play_tennis_game.rb
3. test_tennis_game.rb

Gem test-unit is included for testing

All the game logic are in file: tennis_game.rb


# To run the game

In the main game folder

    $ ruby play_tennis_game.rb

Gives a prompt asking for the next point winner
Options: 1 for Player1, 2 for Player2

* A game is won by the first player to have won at least four points in total and at least two points more than the opponent.

* The running score of each game is described in a manner peculiar to tennis: scores from zero to three points are described as 0, 15, 30, 40, respectively

* If at least three points have been scored by each player, and the scores are equal, the score is "deuce".

* If at least three points have been scored by each side and a player has one more point than his opponent, the score of the game is "advantage" for the player in the lead.



# For unit testing

In the main game folder

    $ ruby test_tennis_game.rb

Has Two Test Cases

  1. Player 1 wins after 2 Deuces

  2. Player 2 wins with Player 1 score on 30
