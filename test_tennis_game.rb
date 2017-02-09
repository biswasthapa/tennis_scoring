#!/usr/bin/ruby
require_relative 'tennis_game'
require "test/unit"
require "pry"

# First Case: Player1 win after 2 Deuces
# Second Case: Player2 win without Deuce
TEST_CASES = [[
      [1,"15-0"],[2, "15-15"],[2,"15-30"],[2,"15-40"],[1,"30-40"],[1,"Deuce"],
      [2,"Advantage Player2"],[1,"Deuce"],[1,"Advantage Player1"],[1,"Game won by Player1"]
    ],
    [
      [2,"0-15"],[1,"15-15"],[2,"15-30"],[1,"30-30"],[2,"30-40"],[2,"Game won by Player2"]
    ]
]

class TestTennisGame < Test::Unit::TestCase
  def test_all_cases
    TEST_CASES.each do |test_case|
      test_game(test_case)
    end
  end

  private

  def test_game(test_case)
    game = TennisGame.new('Player1','Player2')
    test_case.each do |winning_player,score|
      assert_equal(game.next_score(winning_player),score)
    end
  end
end