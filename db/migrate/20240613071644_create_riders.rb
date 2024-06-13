class CreateRiders < ActiveRecord::Migration[7.1]
  def change
    create_table :riders do |t|
      t.string :vehicle_type
      t.text :aoc

      t.timestamps
    end
  end
end
