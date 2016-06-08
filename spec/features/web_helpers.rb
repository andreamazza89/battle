def enter_names_and_play
  visit("/")
  fill_in('player1', with: 'Andrea')
  fill_in('player2', with: 'Randy')
  click_button('Submit')
end 

def enter_random_names_and_play
  names = %w(Andrea Randy Giorgia Jill)
  @current_name = names.sample
  visit("/")
  fill_in('player1', with: 'Andrea')
  fill_in('player2', with: @current_name)
  click_button('Submit')
end 