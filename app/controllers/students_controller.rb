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
  	@model = Student.new(student_params)

  	@model.save
  end


  def destroy
  	load_model
  end

  private

  def student_params
  	params.require(:student).permit(:student_name, :student_email)
  end

  def load_model
  	@model = School.find(params[:id])
  end
end
