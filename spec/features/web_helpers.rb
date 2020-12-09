def sign_in_and_play
  visit('/home')
  fill_in :player_1_name, with:  'Ian'
  fill_in :player_2_name, with: 'Roger'
  click_button 'Submit'
end
