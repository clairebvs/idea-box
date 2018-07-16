class User < ApplicationRecord
  validates :username, uniqueness: true, presence: true
  validates_presence_of :password, require: true
  validates_presence_of :email, :country, :role

  has_many :ideas

  has_secure_password
end
