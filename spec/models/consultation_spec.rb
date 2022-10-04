require 'rails_helper'

RSpec.describe Consultation, type: :model do
  let!(:consultation) { Consultation.new }

  context "Validations" do
    it "is not valid without start at" do
      consultation.status = 'pending'
      consultation.first_name = 'Juan'
      consultation.last_name = 'Cruz'
      consultation.email = 'j@email.com'
      consultation.consultation_type_id = 9
      consultation.end_at = "Mon, 03 Oct 2022 22:12:00.000000000 UTC +00:00"

      expect(consultation).to_not be_valid
      expect(consultation.errors).to be_present
      expect(consultation.errors.to_a).to include("Start at can't be blank")
    end

    it "is not valid without end at" do
      consultation.status = 'pending'
      consultation.first_name = 'Juan'
      consultation.last_name = 'Cruz'
      consultation.email = 'j@email.com'
      consultation.consultation_type_id = 9
      consultation.start_at = "Mon, 03 Oct 2022 22:12:00.000000000 UTC +00:00"

      expect(consultation).to_not be_valid
      expect(consultation.errors).to be_present
      expect(consultation.errors.to_a).to include("End at can't be blank")
    end

    it "is not valid without consultation type id" do
      consultation.status = 'pending'
      consultation.first_name = 'Juan'
      consultation.last_name = 'Cruz'
      consultation.email = 'j@email.com'
      consultation.start_at = "Mon, 03 Oct 2022 22:12:00.000000000 UTC +00:00"
      consultation.end_at = "Mon, 03 Oct 2022 23:12:00.000000000 UTC +00:00"

      expect(consultation).to_not be_valid
      expect(consultation.errors).to be_present
      expect(consultation.errors.to_a).to include("Consultation type must exist")
    end

    it "is not valid without name" do
      consultation.status = 'pending'
      consultation.email = 'j@email.com'
      consultation.consultation_type_id = 9
      consultation.start_at = "Mon, 03 Oct 2022 22:12:00.000000000 UTC +00:00"
      consultation.end_at = "Mon, 03 Oct 2022 23:12:00.000000000 UTC +00:00"

      expect(consultation).to_not be_valid
      expect(consultation.errors).to be_present
      expect(consultation.errors.to_a).to include("Name can't be blank")
    end

    it "is not valid without email" do
      consultation.status = 'pending'
      consultation.first_name = 'Juan'
      consultation.last_name = 'Cruz'
      consultation.consultation_type_id = 9
      consultation.start_at = "Mon, 03 Oct 2022 22:12:00.000000000 UTC +00:00"
      consultation.end_at = "Mon, 03 Oct 2022 23:12:00.000000000 UTC +00:00"

      expect(consultation).to_not be_valid
      expect(consultation.errors).to be_present
      expect(consultation.errors.to_a).to include("Consultation type must exist")
    end
  end
end
