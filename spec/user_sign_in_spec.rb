require "spec_helper"

feature "login user" do
  scenario "allow signin page" do
    visit "/users/sign_in"
    expect(page).to have_content I18n.t("registration.sign_in")
  end

  # scenario "correct login page" do
  #   visit "/users/sign_in"
  #   fill_in 'user_email', :with => "aa@bb.ru"
  #   fill_in 'user_password', :with => "123456"
  #   click_button "Log in"
  #   expect(page).to have_content "Signed in successfully."
  # end
end