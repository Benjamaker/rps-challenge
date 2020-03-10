feature 'player name' do
  scenario "players can enter their names" do
    sign_in
    expect(page).to have_content "Let's go, Ben!"
  end
end
