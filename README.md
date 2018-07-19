# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

---- 

### Project Option 1: IdeaBox

Let's create an app to record your ideas. Host your app live on Heroku.

#### Ideas

- [X] An idea can be created by a user.
- [X] An idea can be edited/updated only by the user that created it.
- [X] An idea can be destroyed only by the user that created it.
- [X] When a user types a new idea into the form, there is a [selection dropdown](http://guides.rubyonrails.org/form_helpers.html#option-tags-from-a-collection-of-arbitrary-objects) for choosing the correct category. See Categories below for more information.

#### Categories

- [X] Ideas belong to a category.
- [X] Categories can be created and destroyed by a logged-in admin user (regular logged in users cannot create categories).
- [X] Categories can be destroyed by a logged-in admin user (regular logged in users cannot destroy categories).

#### Images

- [ ] Users can add an image to their own idea. [( Yes they can add an image but it appears as text not actual image ..)]
- [X] An image can have many ideas and an idea can have many images.
- [X] Images can only be created by an admin user.
  - The most simplistic way to implement images is to store a url to an online image. If you're feeling fancy and want to upload your own images, check out [Carrierwave](https://github.com/carrierwaveuploader/carrierwave) or [Paperclip](https://github.com/thoughtbot/paperclip).

#### Authentication and Authorization

- [X] Users need to log in to see their ideas.
- [X] Users can only see their own ideas -- they should not be able to visit another user's page.
- [X] Users cannot create ideas for other users.
- [X] Users cannot create new categories -- only the admin can do that.
- [X] Users cannot create images -- only the admin can do that; however, a user can assign an image to their idea.
- [X] Visitors can create user accounts.

### User Experience

- [X] The application has been styled.
- [X] The application uses a balanced, considered color scheme.
- [ ] The application implements a font (that is not the default font).
- [X] The application utilizes a nav bar. 
- [ ] The style shows evidence of intentional layout. 
- [X] Space and text is balanced. White space is used to visually separate content. 
- [ ] The application is easily usable. The user can intuitvely navigate between different portions of the application without manually entering the URL into the nav-bar or using the back button on their browser.

### Database

- [X] Properly implements a one-to-many relationship
- [X] Properly implements a many-to-many relationship
- [X] Utilizes primary and foreign keys appropriately

### Code Quality

- [X] Logic lives in the appropriate files !! [(except for the dropdown menu to select an image it is in the view when it should be in the controller)]
- [X] Methods are refactored and follow SRP
- [X] Naming follows convention

### Testing

- [X] Project has a running test suite
- [X] Test suite includes robust feature tests
- [X] Test suite includes tests for validations
- [X] Test suite includes tests for methods that they have created on the models

#### Optional Extensions

- Implement Twitter, Github, or Facebook OAuth login
- Use HAML for your views
- TDD using RSpec instead of Test::Unit

