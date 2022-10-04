require 'rails_helper'

RSpec.describe ConsultationType, type: :model do
  let!(:consultation_type) { ConsultationType.new }

  context "Validations" do
    it "should not be valid without name" do
      consultation_type.location = 'Zoom'
      consultation_type.color = #000
      consultation_type.duration = 60
      consultation_type.user_id = 1

      expect(consultation_type).to_not be_valid
      expect(consultation_type.errors).to be_present
      expect(consultation_type.errors.to_a).to include("Name can't be blank")
    end

    it "should not be valid without location" do
      consultation_type.name = 'John Doe'
      consultation_type.color = #000
      consultation_type.duration = 60
      consultation_type.user_id = 1

      expect(consultation_type).to_not be_valid
      expect(consultation_type.errors).to be_present
      expect(consultation_type.errors.to_a).to include("Location can't be blank")
    end

    it "should not be valid without color" do
      consultation_type.name = 'John Doe'
      consultation_type.location = 'Zoom'
      consultation_type.color = #000
      consultation_type.user_id = 1

      expect(consultation_type).to_not be_valid
      expect(consultation_type.errors).to be_present
      expect(consultation_type.errors.to_a).to include("Duration can't be blank")
    end

  end
end
