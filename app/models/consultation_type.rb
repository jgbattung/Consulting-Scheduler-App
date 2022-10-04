class ConsultationType < ApplicationRecord
  belongs_to :user
  # , optional: true
  has_rich_text :description
  has_many :consultations

  validates :name, :location, :color, :duration, presence: true 
end
