class SchoolsController < ApplicationController
  def index
  	@index = School.all
  end


  def new
  	@model = School.new
  end


  def create 
  	@model = School.create(school_params)
  	if @model.save
  		redirect_to school_path(@model)
  	end
  end

  def show 
  	load_model
  end


  private

  def school_params
  	params.require(:school).permit(:school_name, :class_count)
  end


  def load_model
  @model = School.find(params[:id])
  end
end
