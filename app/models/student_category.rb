class StudentCategory < ApplicationRecord
  belongs_to :category
  belongs_to :student

  validates :student_id, presence: true
  validates :category_id, presence: true
end
