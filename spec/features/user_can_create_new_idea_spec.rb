require 'rails_helper'

describe 'user can create a new idea' do
  it 'by filling out a form' do
    user = User.create(username: "Elena", password: "12343")
  end
end
