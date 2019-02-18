class StudentCategory < ApplicationRecord
  has_one :category
  has_one :student
end
