class Category < ApplicationRecord
  has_many :courses
  has_many :student_categories
  has_many :students, through: :student_categories
end
