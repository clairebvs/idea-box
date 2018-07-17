require 'rails_helper'

describe User, type: :model do
  describe 'Validations' do
    it {should validate_presence_of(:username)}
    it {should validate_uniqueness_of(:username)}
    it {should validate_presence_of(:password)}
    it {should validate_presence_of(:email)}
    it {should validate_presence_of(:country)}
    it {should validate_presence_of(:role)}
  end

  describe 'Relationships' do
    it {should have_many(:ideas)}
  end

  describe 'role' do
    it 'can be created as an admin' do
      user = User.create(username: "Yael", password: '123', email: "yael@yahoo.com", country: 'USA', role: 1)

      expect(user.role).to eq("admin")
      expect(user.admin?).to be_truthy
    end
  end
end
