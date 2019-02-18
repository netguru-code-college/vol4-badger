class Course < ApplicationRecord
  belongs_to :category
  has_many :course_students
end
