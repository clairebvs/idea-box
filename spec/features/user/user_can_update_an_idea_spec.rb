require 'rails_helper'

describe 'user can update an idea' do
  it 'by clicking on edit and submit a form' do
    user = User.create(username: "Elena", password: "12343", email: 'John@yahoo.com', country: 'USA', role: 0)
    category = Category.create(name: "World", created_at: 2017-02-10, updated_at: 2017-10-12)
    idea = Idea.create(title: "Travel around the world", description: "Backpack", category_id: category.id, user_id: user.id, created_at: 2018-02-03, updated_at: 2018-03-04)

    visit edit_user_idea_path(idea.user, idea)

    click_link('Edit')

    select 'other', from: 'Category'
    fill_in 'idea[title]', with: 'Travel today'
    fill_in 'idea[description]', with: 'Cool'
    click_button 'Update'

    expect(current_path).to eq(user_idea_path(idea.user, user))
    expect(page).to have_content("Travel today")
    expect(page).to have_content("Cool")
  end
end
