require 'rails_helper'

describe "user visits '/students/:id/edit" do
  context "enters a new name" do
    it "clicks submit, taken to student show page, and can see the student's new name" do
      student = Student.create(name: "Christine")
      new_name = "Christian"

      visit edit_student_path(student)

      fill_in "New Name",	with: new_name
      click_on "Update Student"

      expect(current_path).to eq(student_path(student))
      expect(page).to have_content(new_name) 
    end
  end
end

=begin
As a user
When I visit `/students/:id/edit`
And I enter a new name
And I click submit
I am on the student show page
And I can see that student's new name
=end