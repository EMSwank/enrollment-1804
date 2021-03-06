require 'rails_helper'

describe "user visits /students/new" do
  context "fills out a form to create a student" do
    it "creates a student and goes to the student show page" do
      visit new_student_path

      fill_in "Name", with:  "Axl Rose"
      click_on "Create Student"
      
      expect(current_path).to eq("/students/#{Student.last.id}")
      expect(page).to have_content(Student.last.name)
    end
  end
end

=begin
As a user
When I visit `/students/new`
And I fill in name
And I click submit
I am on the student show page
And I see that student's name
=end