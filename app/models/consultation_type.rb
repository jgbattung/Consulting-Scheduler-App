class ConsultationType < ApplicationRecord
  belongs_to :user
  # , optional: true
  has_rich_text :description
  has_many :consultations
end
