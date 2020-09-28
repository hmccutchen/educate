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
  		puts "School has been saved!"
  	end
  end


  def school_params
  	params.require(:school).permit(:school_name, :class_count)
  end
end
