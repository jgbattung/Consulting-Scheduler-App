require 'rails_helper'

RSpec.describe User, type: :model do
let!(:user) { User.new }

context "Validations" do
	it "is not valid without consultation_link" do
		user.email = 'user@email.com'
		user.first_name = 'Juan'
		user.last_name = 'Dela Cruz'
		user.specialization = 'Medicine'
		user.password = '123456'

		expect(user).to_not be_valid
		expect(user.errors).to be_present
		expect(user.errors.to_a).to include("Consultation link can't be blank")
	end

	it "is not valid without specialization" do
		user.email = 'user@email.com'
		user.first_name = 'Juan'
		user.last_name = 'Dela Cruz'
		# user.specialization = 'Medicine'
		user.password = '123456'
		user.consultation_link = 'drsample'

		expect(user).to_not be_valid
		expect(user.errors).to be_present
		expect(user.errors.to_a).to include("Specialization can't be blank")
	end
end



end