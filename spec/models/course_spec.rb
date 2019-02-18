require 'rails_helper'

RSpec.describe Course, type: :model do
	it 'belongs to category' do
		expect(subject).to belong_to(:category)
	end
end