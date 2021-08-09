require 'ai'

class Game
  attr_accessor :result

  def initialize (player, ai = Ai.new)
    @result = "nothing"
    @player = player
    @ai = ai.choose
  end

  def play
    if @player == "rock" and @ai == :scissors
      @result = "win"
    elsif @player == "rock" and @ai == :paper
      @result = "lose"
    
    elsif @player == "paper" and @ai == :scissors
        @result = "lose"
    elsif @player == "paper" and @ai == :rock
        @result = "win"
    
    elsif @player == "scissors" and @ai == :rock
          @result = "lose"
    elsif @player == "scissors" and @ai == :paper
          @result = "win"
    end
  end
  
end
