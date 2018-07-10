require 'rails_helper'

describe "a user" do
  context "visit /students/:id/addresses/new" do
    it "fills out a form to create a new address" do
      visit new_student_address_path

      fill_in "Description",	with: "Summer Address"
      fill_in "Street",	with: "12345 hjksdalf"
      fill_in "City",	with: "hjkl"
      fill_in "Zip Code",	with: 78902
      click_on "Submit"

      expect(current_path).to eq(student_path("/students/#{Student.last.id}"))
      expect(page).to have_content("Summer Address")
      expect(page).to have_content("12345 hjksdalf")
      expect(page).to have_content("hjkl")
      expect(page).to have_content(78902)

    end
  end
end

=begin
As a user
When I visit `/students/:id/addresses/new`
And I fill in description with a description (e.g. "Summer Address")
And I fill in street with a street address
And I fill in city with a city
And I fill in state with a state
And I fill in zip code with a zip code
And I click submit
I am taken to that student's show page
And I see the description, street, city, state, and zip on that page
=end