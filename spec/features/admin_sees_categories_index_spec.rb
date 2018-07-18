require 'rails_helper'

describe 'User visits categories index page' do
  context 'as admin' do
    it 'allows admin to create new category' do
      admin = User.create(username: 'Yael', password: '1234', role: 1)

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

      visit admin_categories_path
      expect(page).to have_content('Admin Categories')
    end
  end
end
