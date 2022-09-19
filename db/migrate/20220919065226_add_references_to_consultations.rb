class AddReferencesToConsultations < ActiveRecord::Migration[7.0]
  def change
    add_column :consultations, :consultation_type_id, :integer
  end
end
