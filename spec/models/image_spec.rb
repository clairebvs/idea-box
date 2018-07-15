require 'rails_helper'

describe Image, type: :model do
  describe 'Validations' do
    it {should validate_presence_of(:name)}
    it {should validate_presence_of(:url)}
  end

  describe 'Relationships' do
    it {should have_many(:idea_images)}
    it {should have_many(:ideas).through(:idea_images)}
  end
end
