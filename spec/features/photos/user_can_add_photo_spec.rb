require 'rails_helper'

feature 'user can add a photo for their family to see', %{
  As a family member
  I want to share photos of my kids for Grandpa 
  So that I can keep him involved in their life without annoying my facebook friends
} do

  # Acceptance Criteria
  # [] User can post photo
  # [] Photo can only be seen by family members

  scenario 'user can add photo and then see it on their homepage' do
    user = FactoryGirl.create(:user)

    sign_in_as(user)

    visit '/'
    click_link("New Photo")

    expect(page).to have_content("Choose File")

    fill_in 'Caption', with: "Fourth of July!"
    attach_file "Choose File", "#{Rails.root}/spec/support/images/fireworks.jpg"
    click_button("Add Photo")

    expect(page).to have_content("Your photo has been added!")
  end
end
