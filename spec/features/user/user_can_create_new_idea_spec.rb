require 'rails_helper'

describe 'user can create a new idea' do
  it 'by filling out a form' do
    user = User.create(username: "Elena", password: "12343", email: 'John@yahoo.com', country: 'USA', role: 1)
    category = Category.create(name: "World", created_at: 2017-02-10, updated_at: 2017-10-12)
    idea = Idea.create(title: "Travel around the world", description: "Backpack", category_id: category.id, user_id: user.id, created_at: 2018-02-03, updated_at: 2018-03-04)

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit new_user_idea_path(user)

    fill_in :idea_title, with: idea.title
    fill_in :idea_description, with: idea.description
    select "#{category.name}", from: 'idea[category_id]'

    click_on 'Create Idea'

    expect(current_path).to eq(user_ideas_path(user))
    expect(page).to have_content(idea.title)
    expect(page).to have_content(idea.description)
  end
end
