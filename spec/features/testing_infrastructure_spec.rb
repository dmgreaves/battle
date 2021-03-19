feature 'Player names' do
    scenario 'Fill in players names' do
        sign_in_and_play
        expect(page).to have_content "Player 1: David\nPlayer 2: George"
    end
end

feature 'Display hit points' do
    scenario 'Show Player 2s hit points' do
       sign_in_and_play
       expect(page).to have_content "George Hit Points: 25"
    end
end

feature 'Attack player and confirm' do
    scenario 'Attack Player 2 and get confirmation' do
      sign_in_and_play
      click_button('Attack')
      expect(page).to have_content "George has been attacked!"
    end
end
