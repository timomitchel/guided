require "rails_helper"

describe "a visitor can signup to be a guide" do 
  context "it visits the create account page" do 
    context "it clicks on the become a guide link" do 
      it "can signup as a guide and is added to guide DB and User DB" do
        visit signup_path

        click_link "Become a Guide"

        expect(current_path).to eq new_guide_path
        expect(page).to have_content "username"
        expect(page).to have_content "password"
        expect(page).to have_content "category"
        expect(page).to have_content "city"
      end
    end
  end
end