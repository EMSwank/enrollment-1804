require 'rails_helper'

describe "user" do
  context "visits /students" do
    it "sees a list of student names" do
      student1 = Student.create(name: "Larry")
      student2 = Student.create(name: "Moe")
      student3 = Student.create(name: "Curly")

      visit students_path

      expect(page).to have_content(student1.name)
      expect(page).to have_content(student2.name)
      expect(page).to have_content(student3.name)
    end
  end
end


=begin
As a user
When I visit `/students`
I see a list of student names
=end