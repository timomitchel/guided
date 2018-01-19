require 'rails_helper'

describe "visitor sees homepage with all correct elements" do 
  context " visits '/'" do 
    before :each do 
      visit '/'
    end
    it "sees the welcome nav bar and links to guides, guidees, and create account" do 

    end
  end
end
