require 'rails_helper'

describe 'User visits categories index page' do
  context 'as admin' do
    it 'allows admin to destroy a category' do
      admin = User.create(username: 'Yael', password: '1234', role: 1)
      category = Category.create(name: 'Finance', created_at: 2018-02-03, updated_at: 2018-03-04)

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

      visit admin_category_path(admin)

      click_on 'Delete'

      expect(page).to have_content("Category was successfully deleted!")
      expect(page).to_not have_content(category.name)
    end
  end
end
