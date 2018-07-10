require 'rails_helper'

describe 'user visits student show page' do
  it "sees an individual student" do
    student1 = Student.create(name: "David")
    student2 = Student.create(name: "Slash")

    visit student_path(student)

    expect(page).to have_content(student1.name)
    expect(page).to have_content(student2.name)
  end
end