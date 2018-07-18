require 'rails_helper'

describe 'user can visit their show page idea' do
  it 'can click on Delete button' do
    user = User.create(username: "Elena", password: "12343", email: 'John@yahoo.com', country: 'USA', role: 0)
    category = Category.create(name: "World", created_at: 2017-02-10, updated_at: 2017-10-12)
    idea = user.ideas.create(title: "Travel around the world", description: "Backpack", category_id: category.id, created_at: 2018-02-03, updated_at: 2018-03-04)
    idea2 = user.ideas.create(title: "Cooking new pasta recipe", description: "Great meal", category_id: category.id, created_at: 2018-02-03, updated_at: 2018-03-04)

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit user_idea_path(user, idea)

    click_button ('Delete')

    expect(current_path).to eq(user_ideas_path(user))

    expect(page).to_not have_content(idea.title)
    expect(page).to_not have_content(idea.description)
    expect(page).to have_content(idea2.title)
    expect(page).to have_content(idea2.description)


  end
end
