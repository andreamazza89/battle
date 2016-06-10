def enter_names_and_play
  visit("/")
  fill_in('player1', with: 'Andrea')
  fill_in('player2', with: 'Randy')
  click_button('Submit')
end 

def enter_random_name_for_both_players_and_play
  names = %w(Andrea Randy Giorgia Jill)
  @name1 = names.sample
  @name2 = names.sample
  visit("/")
  fill_in('player1', with: @name1)
  fill_in('player2', with: @name2)
  click_button('Submit')
end 

def attack
    click_button('Attack')
    click_button('Go Back')
end
