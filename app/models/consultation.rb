class Consultation < ApplicationRecord
    has_person_name
    belongs_to :consultation_type
    has_rich_text :notes
end
