require "spec_helper"

feature "Registration visitors" do
  scenario "allows access to register page" do
    visit new_user_registration_path
    expect(page).to have_content I18n.t("registration.sign_up")
  end

  scenario "register visitor in sign up page" do
    visit new_user_registration_path
    fill_in 'user_email', :with => "aa@bb.ru"
    fill_in 'user_username', :with => "rt23ru"
    fill_in 'user_password', :with => "123456"
    fill_in 'user_password_confirmation', :with => "123456"
    click_button "Sign up"
    expect(page).to have_content(I18n.t("devise.registrations.signed_up"))
  end
end