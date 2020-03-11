class Game

  attr_reader :player1, :cpu, :cpumove
  attr_accessor :p1move

  OPTIONS = ["ROCK", "PAPER", "SCISSORS"]
  WIN = {"ROCK" => "SCISSORS", "PAPER" => "ROCK", "SCISSORS" => "PAPER"}

  def initialize(player1, cpu)
    @player1 = player1
    @cpu = cpu
    @p1move = p1move
    @cpumove
  end

  def cpumove
    @cpumove = OPTIONS.sample
  end

  def calculator
    if @p1move == @cpumove
      "It was a draw"
    elsif WIN[@p1move] == @cpumove
      "Player 1 wins"
    else
      "Computer wins!"
    end
  end

end
