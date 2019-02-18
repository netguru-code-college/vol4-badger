class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :course_students
  has_many :student_categories

  # student can enroll for many courses
  has_many :courses, through: :course_students

  # courses can be followed by many students
  has_many :categories, through: :student_categories
end
