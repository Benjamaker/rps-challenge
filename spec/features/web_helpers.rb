def sign_in
  visit ('/')
  fill_in :name, with: "Ben"
  click_button "Submit"
end
