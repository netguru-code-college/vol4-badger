class StudentController < ApplicationController
  def show
    # id = params[:id]
    # @course = Course.find(id)
    # @attachments = @course.attachments
    # @attachment = Attachment.new(course_id: id)
    # @resource = Resource.new(course_id: id)
    # @resources = @course.resources  	

 
	# binding.pry
    # @student = Student.find(params[:id])
    @student = current_student
    # @student = Student.find(params[:id])
    # @student = Student.find(id)
  end
end




# Course.create({category_id: biology_category.id, name: "Zoology", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."})
# student1 = Student.create({email: "test1@wp.pl", password: "password1"})
