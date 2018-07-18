require 'rails_helper'

describe 'User visits categories index page' do
  context 'as admin' do
    it 'allows admin to create new category' do
      admin = User.create(username: 'Yael', password: '1234', role: 1)
      category = Category.create(name: 'Finance', created_at: 2018-02-03, updated_at: 2018-03-04)

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

      visit new_admin_category_path(admin)

      fill_in :category_name, with: 'Finance'
      click_on 'Create Category'

      expect(current_path).to eq(admin_categories_path)
      expect(page).to have_content(category.name)
    end
  end
end
