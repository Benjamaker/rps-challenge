feature 'choose weapon' do
  scenario "players can choose their weapon" do
    sign_in
    click_button "ROCK"
    expect(page).to have_content("Ben chose ROCK")
  end
end
