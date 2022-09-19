class AddConsultationLinkToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :consultation_link, :string
    add_index :users, :consultation_link, unique: true
  end
end
