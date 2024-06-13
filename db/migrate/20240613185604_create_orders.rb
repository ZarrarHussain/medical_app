class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.references :patient, null: false, foreign_key: true
      t.references :doctor, null: false, foreign_key: true
      t.date :date_of_order
      t.string :status
      t.string :order_barcode_id

      t.timestamps
    end
  end
end
