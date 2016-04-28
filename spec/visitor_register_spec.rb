require "spec_helper"

feature "Registration visitors" do
  scenario "allows access to register page" do
    visit "/users/sign_up"
    expect(page).to have_content "Sign up page"
  end
end