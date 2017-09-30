class CreateVolunteers < ActiveRecord::Migration[5.1]
  def change
    create_table :volunteers do |t|
      t.string :first_name
      t.string :last_name
      t.string :middle_initial
      t.integer :birth_year
      t.integer :birth_month
      t.integer :birth_day
      t.string :political_interest
      t.string :email_address

      t.timestamps
    end
  end
end
