class CoursesController < ApplicationController

  def index
    @categories = Category.all
  end

  def show
    id = params[:id]
    @course = Course.find(params[:id])
    @attachments = @course.attachments
    @attachment = Attachment.new(course_id: id)
    @resource = Resource.new(course_id: id)
    @resources = @course.resources
    @students = @course.students
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

     @course.resources.build
  end

  def create
    course = Course.create(create_params)
    redirect_to course_path(course)
  end


 private
  def create_params
    params.require(:course).permit(:name, :description, :category_id, :resource_id, resources_attributes: [:title, :link, :completed, :course_id])
  end

end
