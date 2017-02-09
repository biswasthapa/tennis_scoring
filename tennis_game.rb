class TennisGame
  require_relative 'player'
  def initialize(player1_name, player2_name)
    @player1 = ::Player.new(player1_name,0,"Points")
    @player2 = ::Player.new(player2_name,0,"Points")
  end

  # Asks for the next point winner until Game is won by one of the players
  def play_game()
    while true
     puts "Points won by(1/2)?"
     point_winner = gets

     score = next_score(point_winner.to_i)
     puts "\nScore: #{score}"
     if score.include?('Game won by')
      break
     end
   end
  end

  # Gets the next score based on who has won the point
  def next_score(player)
    if player == 1
      get_score(@player1,@player2)
    else
      get_score(@player2,@player1)
    end

  end

  private

  # Increases the point of the point winner
  # If the scores are level and at least three points are scored gets stages such as Deuce, Advantage
  # Stage is Game if the game is won
  def get_score(point_winner,point_loser)
    if point_winner.points < 40
      point_winner.points = point_winner.next_point
      if point_winner.points == 40 && point_loser.points == 40
        point_winner.stage = point_loser.stage = 'Deuce'
      else
        "#{@player1.points}-#{@player2.points}"
      end
    else
      stage = get_stage(point_winner,point_loser)
      if stage == 'Game'
        "Game won by #{point_winner.name}"
      elsif stage == 'Advantage'
        "Advantage #{point_winner.name}"
      else
        "Deuce"
      end
    end
  end

  # Stages
  # Points, Deuce, Advantage and Game
  def get_stage(point_winner, point_loser)
    if point_loser.stage == "Points"
      point_winner.stage = "Game"
    elsif point_loser.stage == "Deuce"
      point_loser.stage = "Points"
      point_winner.stage = "Advantage"
    else
      point_winner.stage = "Deuce"
      point_loser.stage = "Deuce"
    end
  end
end