class CourseStudent < ApplicationRecord
  has_one :course
  has_one :student
end
