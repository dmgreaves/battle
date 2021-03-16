feature 'Testing infrastructure' do
    # scenario 'Can run app and check page content' do
    #   visit('/')
    #   expect(page).to have_content 'Testing infrastructure working!'
    # end

    scenario 'Fill in players names' do
        visit('/')
        fill_in :name1, with: 'David'
        fill_in :name2, with: 'Taran'
        click_button('Submit')
        expect(page).to have_content "Player 1: David\nPlayer 2: Taran"
      end
  end