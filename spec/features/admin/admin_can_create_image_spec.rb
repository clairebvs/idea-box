require 'rails_helper'

describe 'USer visits images index page' do
  context 'as admin' do
    it 'allows admin to create a new image' do
      admin = User.create(username: 'Yael', password: '1234', role: 1)
      image = Image.create(name: 'Lake', url: 'hdla/sdfj', created_at: 2018-02-03, updated_at: 2018-03-04)

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

      visit new_admin_image_path(admin)

      fill_in :image_name, with: 'Lake'
      fill_in :image_url, with: 'hdla/sdfj'
      click_on 'Create Image'

      expect(current_path).to eq(admin_images_path)
      expect(page).to have_content(image.name)

    end
  end
end
