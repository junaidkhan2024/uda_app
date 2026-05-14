class CreateDonations < ActiveRecord::Migration[8.1]
  def change
    create_table :donations do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :mobile_number
      t.decimal :amount
      t.text :address

      t.timestamps
    end
  end
end
