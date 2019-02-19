class CoursesController < ApplicationController

  def index
    @courses = Course.all
  end

  def show
 
  end

  def new
    @course = Course.new
  end

  def create
    course = Course.create(create_params)
    redirect_to "/courses/index"
  end

 private 
  def create_params
    params.require(:course).permit(:name, :description, :category_id, :resource_id) 
  end

end
