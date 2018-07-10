require 'rails_helper'

describe "user visits /students" do
  context "clicks on delete next to student's name" do
    it "redirects to student index where the name no longer appears" do
      student = Student.create(name: "Larry")

      visit students_path

      click_on "Delete"

      expect(page).to_not have_content(student)
    end
  end
end



=begin
As a user
When I visit `/students`
And I click "Delete" next to a student's name
I see the students index
And that student's name is no longer on the page
=end