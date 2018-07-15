require 'rails_helper'

describe IdeaImage, type: :model do
  describe 'Relationships' do
    it {should belong_to(:image)}
    it {should belong_to(:idea)}
  end
end
