#Understands the actions a player can take

class Game

  attr_reader :player_1, :player_2

  def attack(other_player)
    other_player.damage
  end

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end
end
