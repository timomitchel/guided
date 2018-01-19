require 'rails_helper'

describe "visitor sees homepage with all correct elements" do 
  context " visits '/'" do 
    before :each do 
      visit '/'
    end

    it "sees the welcome nav bar and links to guides, guidees, and create account" do 
      expect(page).to have_content "Welcome to Guided. Adventure Awaits!"
      expect(page).to have_link "Create Account"  
      expect(page).to have_link "Login"  
      expect(page).to have_link "Guides"  
      expect(page).to have_link "Cities"  
    end
    it "can click on Create Account and is taken to a page that has links to sign up as Guide or Guidee" do 
      click_link "Create Account"

      expect(current_path).to eq new_user_path

      expect(page).to have_link "Become a Guide"
      expect(page).to have_link "Find a Guide"
    end
  end
end
