require "rails_helper"

describe Role do
  context "validations" do 
    it {should validate_presence_of :name}
  end
  context "relationships" do 
    it {should have_many :users}
    it {should have_many :user_roles}
  end
end