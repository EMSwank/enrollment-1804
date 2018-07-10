require 'rails_helper'

describe "user" do
  context "visits any page" do
    it "sees links to see a list of all students AND create a new student" do
      students_link = "List All Students"
      create_student_link = "Add New Student"

      visit students_path

      expect(page).to have_link(students_link)
      expect(page).to have_link(create_student_link)
    end
    it "sees links to see a list of all students AND create a new student" do
      student = Student.create(name: "Ahkmed")
      students_link = "List All Students"
      create_student_link = "Add New Student"

      visit student_path(student)

      expect(page).to have_link(students_link)
      expect(page).to have_link(create_student_link)
    end
    it "sees links to see a list of all students AND create a new student" do
      students_link = "List All Students"
      create_student_link = "Add New Student"

      visit new_student_path

      expect(page).to have_link(students_link)
      expect(page).to have_link(create_student_link)
    end
    it "sees links to see a list of all students AND create a new student" do
      student = Student.create(name: "Ahkmed")
      students_link = "List All Students"
      create_student_link = "Add New Student"

      visit student_path(student)

      expect(page).to have_link(students_link)
      expect(page).to have_link(create_student_link)
    end

  end
end



=begin

As a user
When I visit `/students`
And I click on a student's name
I am taken to a show page for that student

=end
