class CoursesController < ApplicationController

  def index
    @courses = Course.all
  end

  def show
 
  end

  def new
    @course = Course.new
    @category_options = []
    @categories = Category.all

    @categories.all.each do |category|
      category_elements = []
      category_elements.push(category.name)
      category_elements.push(category.id)     
      @category_options.push(category_elements)      
    end

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
