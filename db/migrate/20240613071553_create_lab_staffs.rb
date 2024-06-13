class CreateLabStaffs < ActiveRecord::Migration[7.1]
  def change
    create_table :lab_staffs do |t|
      t.references :user, null: false, foreign_key: true
      t.string :department
      t.integer :emp_id

      t.timestamps
    end
  end
end
