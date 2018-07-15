require 'rails_helper'

describe Image, type: :model do
  describe 'Validations' do
    it {should validate_presence_of(:name)}
    it {should validate_presence_of(:url)}
  end
end
