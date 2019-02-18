class Category < ApplicationRecord
  has_many :courses
  has_many :student_categories
end
