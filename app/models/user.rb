class User < ApplicationRecord
  validates_presence_of :username, :password
  validates_uniqueness_of :username

  has_many :user_roles
  has_many :roles, through: :user_roles

  has_secure_password
  
  enum role: ["default", "guide", "admin"]
end