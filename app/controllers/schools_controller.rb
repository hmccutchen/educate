class SchoolsController < ApplicationController
  def index
  	@index = School.all
  end


  def new
  	@model = School.new
  end


  def create 
  	@model = School.create(school_params)
  	
  	succuessful_create if @model.save
  end


  def show 
  	load_model
    @student = Student.new
  end


  private

  def school_params
  	params.require(:school).permit(:school_name, :class_count)
  end


  def load_model
  @model = School.find(params[:id])
  end

  def succuessful_create
  	redirect_to school_path(@model), notice: "You've created a new School!"
  end

end
