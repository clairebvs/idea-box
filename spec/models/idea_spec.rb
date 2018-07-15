require 'rails_helper'

describe Idea, type: :model do
  describe 'validations' do
    it {should validate_presence_of(:title)}
    it {should validate_presence_of(:description)}
  end

  describe 'Relationships' do
    it {should belong_to(:user)}
    it {should belong_to(:category)}
    it {should have_many(:idea_images)}
    it {should have_many(:images).through(:idea_images)}
  end
end
