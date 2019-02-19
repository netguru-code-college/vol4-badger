require 'rails_helper'

RSpec.describe Student, type: :model do
	it 'has many course_students' do
		expect(subject).to have_many(:course_students)
	end

	it 'has many student_categories' do
		expect(subject).to have_many(:student_categories)
	end
end