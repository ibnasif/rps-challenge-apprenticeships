class Ai

  attr_accessor :choices, :choice

  def initialize
    @choices = [:rock, :paper, :scissors]
    
  end

  def choose
    @choice = @choices.sample
     
  end


end