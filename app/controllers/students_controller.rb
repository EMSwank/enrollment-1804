class StudentsController < ApplicationController

  def index
    @students = Students.all
  end
  
  def show
    @student = Student.find(params[:id])
  end
end
