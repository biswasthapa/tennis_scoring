#!/usr/bin/ruby
require_relative 'tennis_game'
puts "###################  Welcome to Tennis Game  ########################"
puts "  Choose which player wins the point(1 for Player1 / 2 for Player2)  "
puts "      Score will be displayed as (Player1 Score:Player2 Score)\n     "
t = TennisGame.new("Player1", "Player2")
t.play_game()