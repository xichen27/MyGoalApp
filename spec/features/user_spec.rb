feature "User show page displays many comments" do
  context "when logged in" do
    before :each do
      sign_up("cookiemonster")
    end
     
     scenario "should have leave comments " do
       expect(page).to have_content("Leave comments")
     end
     
     scenario "can create new goals" do
       click_button("Leave a comment")
       comment = Faker::Hacker.say_something_smart
       fill_in('Comment', with: comment)
       click_button("Add comment")
       expect(page).to have_content(comment)
     end
   
     scenario "can see posted comments" do
       expect(page).to have_content("Comments")
     end
  end
end