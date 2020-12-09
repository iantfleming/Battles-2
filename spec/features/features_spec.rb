# feature 'Testing infrastructure' do
#   scenario 'Can run app and check page content' do
#     visit('/home')
#     expect(page).to have_content 'Testing infrastructure working!'
#   end
# end

feature 'Enter names' do
  scenario 'players fill in and submit their names' do
    sign_in_and_play
    expect(page).to have_content 'Ian vs. Roger'
  end
end

feature 'View Hit points' do
  scenario 'Show Player 2 Hit points' do
    sign_in_and_play
    expect(page).to have_content 'Roger: 100HP'
  end
end
