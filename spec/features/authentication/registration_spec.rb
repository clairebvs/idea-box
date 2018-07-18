require 'rails_helper'

describe 'registration workflow' do
  it 'submits registration form successfully' do
    username = "ben04"

    visit root_path

    click_on 'Sign Up to be a New User'

    expect(current_path).to eq(new_user_path)
    fill_in :user_username, with: username
    fill_in :user_password, with: '12345'
    fill_in :user_email, with: 'ben@yahoo.com'
    fill_in :user_country, with: 'USA'

    click_on 'Create User'

    expect(current_path).to eq(user_path(User.last))
    expect(page).to have_content("Welcome, #{username}!")
  end

  it 'submits registration form with duplicate username' do
    username = "ben04"
    User.create(username: username, password: '123098', email: 'ben@yahoo.com', country: 'USA')

    visit root_path

    click_on 'Sign Up to be a New User'

    expect(current_path).to eq(new_user_path)

    fill_in :user_username, with: username
    fill_in :user_password, with: '12345'
    fill_in :user_email, with: 'ben@yahoo.com'
    fill_in :user_country, with: 'USA'

    click_on 'Create User'

    expect(current_path).to eq(users_path)
  end

end
