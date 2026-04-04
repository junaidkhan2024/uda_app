class CreateRegistrations < ActiveRecord::Migration[8.1]
  def change
    create_table :registrations do |t|
      t.string  :first_name,          null: false
      t.string  :last_name,           null: false
      t.string  :registration_number, null: false
      t.string  :specialization
      t.string  :qualification,       null: false
      t.string  :hospital_or_clinic_name
      t.string  :phone,               null: false
      t.string  :email,               null: false
      t.string  :area,                null: false
      t.string  :document_file_name
      t.string  :status,              default: "pending"

      t.timestamps
    end

    add_index :registrations, :email,               unique: true
    add_index :registrations, :registration_number, unique: true
  end
end
