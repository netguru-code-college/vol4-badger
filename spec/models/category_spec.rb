require 'rails_helper'
# with Mikolaj help
RSpec.describe Category, type: :model do
	it 'has many courses' do
		expect(subject).to have_many(:courses)
	end
end