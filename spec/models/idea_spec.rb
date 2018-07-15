require 'rails_helper'

describe Idea, type: :model do
  describe 'validations' do
    it {should validate_presence_of(:title)}
    it {should validate_presence_of(:description)}
  end
end
