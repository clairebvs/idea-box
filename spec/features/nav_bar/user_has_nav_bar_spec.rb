require 'rails_helper'

describe 'admin visits app' do
  it 'sees a nav bar on top with categories link' do
    admin = User.create(username: "Admin", password: "12343", email: 'admin@yahoo.com', country: 'USA', role: 1)
    category = Category.create(name: "World", created_at: 2017-02-10, updated_at: 2017-10-12)
    idea = admin.ideas.create(title: "Travel around the world", description: "Backpack", category_id: category.id, created_at: 2018-02-03, updated_at: 2018-03-04)

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

    visit user_path(admin)

    expect(page).to have_content('Categories')
    click_link 'Categories'

    expect(current_path).to eq(admin_categories_path)
  end
end

describe 'user visits app' do
  it 'does not see categories link' do
    user = User.create(username: "Admin", password: "12343", email: 'user@yahoo.com', country: 'USA', role: 0)
    category = Category.create(name: "World", created_at: 2017-02-10, updated_at: 2017-10-12)
    idea = user.ideas.create(title: "Travel around the world", description: "Backpack", category_id: category.id, created_at: 2018-02-03, updated_at: 2018-03-04)

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit user_path(user)

    expect(page).to_not have_content('Categories')
  end
end
