class CreatePatients < ActiveRecord::Migration[7.1]
  def change
    create_table :patients do |t|
      t.references :user, null: false, foreign_key: true
      t.date :dob
      t.text :address
      t.string :contact_number
      t.text :fasting_req

      t.timestamps
    end
  end
end
