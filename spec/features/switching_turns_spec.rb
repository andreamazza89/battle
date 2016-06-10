require "capybara/rspec"
require_relative "../../app"

feature 'Turns management' do

  #As two Players,
  #So we can continue our game of Battle,
  #We want to switch turns

  scenario 'Current turn switches to player 2 after player 1 attacks' do
    enter_random_name_for_both_players_and_play   
    attack
    expect(page).to have_content("It's #{@name2}'s turn now")
  end 

  scenario 'Current turn switches to player 1 after player 2 attacks' do
    enter_random_name_for_both_players_and_play   
    attack
    attack
    expect(page).to have_content("It's #{@name1}'s turn now")
  end 
end 
