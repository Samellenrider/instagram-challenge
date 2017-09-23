require 'rails_helper'

feature 'Creating posts' do
	scenario 'post a picture' do
	  visit '/'
	  click_link 'New post'
	  attach_file('Image', "test/files/images/surf.jpg")
	  fill_in 'Caption', with: 'heavy barrels dude'
	  click_button 'Post'
	  expect(page).to have_content('heavy barrels dude')
	  expect(page).to have_css("img[src*='surf.jpg']")
  end
end