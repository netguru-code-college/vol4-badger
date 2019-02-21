class CourseStudentsController < ApplicationController

  def index
    @student = current_student
    @my_courses = @student.courses
  end

  def create
    course = Course.find_by_id(params[:id])
    CourseStudent.create(student: current_student, course: course)
    redirect_to course_path(course)
  end

  def destroy
    course = Course.find_by_id(params[:id])
    CourseStudent.find_by(student: current_student, course: course).destroy!
    redirect_to my_courses_path
  end

end
