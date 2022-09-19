class Consultation < ApplicationRecord
    has_person_name
    belongs_to :consultation_type
end
