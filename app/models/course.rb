class Course < ApplicationRecord
  belongs_to :category

  has_many :course_students
  has_many :students, through: :course_students

  has_many :resources
  has_many :attachments

  accept_nested_attributes_for :resources, allow_destroy :true
end
