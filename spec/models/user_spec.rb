require "rails_helper"

describe User do
  context "validations" do 
    it {should validate_presence_of :username && :password}
    it {should validate_uniqueness_of :username}
  end
  context "relationships" do 
    it {should have_many :roles}
    it {should have_many :user_roles}
  end
end