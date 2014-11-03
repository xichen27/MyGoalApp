require 'rails_helper'

feature "User profile page displays and creates new goals" do
  context "when logged in" do
    before :each do
      sign_up("cookiemonster")
      visit user_url(User.find_by(user_name: "cookiemonster"))
    end
  
    scenario "display the user name" do
      expect(page).to have_content("cookiemonster")
    end
    
    scenario "can move from user page to create new links" do
      expect(page).to have_content("Goals")
    end
    
   scenario "can create new goals" do
     expect(page).to have_content("Create New Goal")
   end
   
   scenario "can move back to users index" do
     expect(page).to have_content("All Users")
   end
   
  end
end