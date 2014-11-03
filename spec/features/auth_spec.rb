require 'rails_helper'
require 'spec_helper'

feature "the signup process" do 
 
  scenario "has a new user page" do
    visit new_user_url
    expect(page).to have_content
  end 
  
  feature "signing up a user" do
    scenario "shows username on the homepage after signup" do
      visit new_user_url
      fill_in 'Username', with: "testing"
      fill_in 'Password', with: "biscuits"
      click_on "Create User"
    end
  end

end

feature "logging in" do 

  scenario "shows username on the homepage after login" do
    visit new_user_url
    fill_in 'Username', with: "testing"
    fill_in 'Password', with: "biscuits"
    click_on "Create User"
    expect(page).to have_content "testing"
  end
end

feature "logging out" do 

  scenario "begins with logged out state" do
    visit new_user_url
    fill_in 'Username', with: "testing"
    fill_in 'Password', with: "biscuits"
    click_on "Create User"
    click_button "Log Out"
    
    expect(page).to have_content "Sign In"
  end

end