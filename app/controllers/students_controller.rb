class StudentsController < ApplicationController

  def index
  	@model = Student.all
  end

  def show
  	load_model
  end

  def new
  	@model = Student.new(student_params)
  end

  def create
  	load_school
  	@student = @school.students.build(student_params)

     @student.save 

  end


  def destroy
  	load_model
  end

  private

  def student_params
  	params.require(:student).permit(:student_name, :student_email)
  end

  def load_school
  	@school = School.find(params[:school_id])
  end
end
