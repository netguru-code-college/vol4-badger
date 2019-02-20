class CourseStudentsController < ApplicationController

  def create
    course = Course.find_by_id(params[:id])
    CourseStudent.create(student: current_student, course: course)
    redirect_to course_path(course)
  end
end
