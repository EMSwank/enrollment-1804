require 'rails_helper'

describe 'user visits student show page' do
  it "sees an individual student" do
    student = Student.create(name: "David")

    visit student_path(student)

    expect(page).to have_content(student.name)
  end
end