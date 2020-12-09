feature 'Attack confirmation' do
  scenario 'Player 1 attacks player 2' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'You gave Roger a massive punch to the head!'
  end
end

feature 'Attacking' do
  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).not_to have_content 'Roger: 100HP'
    expect(page).to have_content 'Roger: 90HP'
  end
end
