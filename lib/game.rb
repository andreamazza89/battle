#Understands the actions a player can take

class Game

  attr_reader :player_1, :player_2, :turn

  def attack
    @turn == @player_1 ? @player_2.damage : @player_1.damage
    switch_turn
  end

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @turn = @player_1
  end

private
  
  def switch_turn
    @turn = (@turn == @player_1 ? @player_2 : @player_1)
  end
end
