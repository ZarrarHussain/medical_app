class CreateRiders < ActiveRecord::Migration[7.1]
  def change
    create_table :riders do |t|
      t.references :user, null: false, foreign_key: true
      t.string :vehicle_type
      t.text :aoc

      t.timestamps
    end
  end
end
