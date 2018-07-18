require 'rails_helper'

# describe 'user visit their show page idea' do
#   it 'can add an image to their idea' do
#     user = User.create(username: "Elena", password: "12343", email: 'John@yahoo.com', country: 'USA', role: 0)
#     category = Category.create(name: "World", created_at: 2017-02-10, updated_at: 2017-10-12)
#     idea = user.ideas.create(title: "Travel around the world", description: "Backpack", category_id: category.id, created_at: 2018-02-03, updated_at: 2018-03-04)
#     image = Image.create(name: 'Sea', url: 'sea/jpg')
#
#     allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
#
#     visit user_idea_path(user, idea)
#
#     click_link 'Add An Image'
#
#     fill_in :image_name, with: 'Sea'
#     fill_in :image_url, with: 'sea/jpg'
#     click_on 'Add'
#
#     expect(current_path).to eq(user_idea_path(user, idea))
#     expect(page).to have_content(image.name)
#   end
# end
