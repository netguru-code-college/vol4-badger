class Course < ApplicationRecord
  belongs_to :category

  has_many :course_students
  has_many :students, through: :course_students

  has_many :resources
  has_many :attachments
  accepts_nested_attributes_for :resources

  def author
    course_students.find_by(author: true)&.student&.username
  end

  def enrolled?(student)
  	CourseStudent.where(student: student, course: self).exists?
#    @course = Course.find(params[:id])
#    @my_courses = current_student.courses 
#    return @my_courses.find_by(course: @course).present?
  end

end
