class User < ApplicationRecord
  validates_presence_of :username, :password, :email, :country, :role

  has_many :ideas
end
