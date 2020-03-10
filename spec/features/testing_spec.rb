feature 'testing' do
  scenario "testing infrastructure works" do
    visit '/setup'
    expect(page).to have_content("Setup working!!")
  end
end
