class Ai

  attr_accessor :choices

  def initialize
    @choices = [:rock, :paper, :scissors]
  end

  def choose
    @choices.sample
  end


end