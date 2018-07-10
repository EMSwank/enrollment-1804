require 'rails_helper'

describe "user visits /students" do
  context "clicks on delete next to student's name" do
    it "redirects to student index where the name no longer appears" do
      student1 = Student.create(name: "Larry")
      student2 = Student.create(name: "Moe")
      student3 = Student.create(name: "Curly")

      visit students_path
      
      within('div#student1') do
        click_on "Delete"
      end

      expect(page).to have_content(student1)
      expect(page).to have_content(student2)
      expect(page).to_not have_content(student3)
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