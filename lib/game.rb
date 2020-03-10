class Game

  attr_reader :player1, :cpu
  attr_accessor :p1move

  OPTIONS = ["ROCK", "PAPER", "SCISSORS"]

  def initialize(player1, cpu)
    @player1 = player1
    @cpu = cpu
    @p1move = p1move
    @cpumove =  OPTIONS.sample
  end

  def calculator

  end

end
