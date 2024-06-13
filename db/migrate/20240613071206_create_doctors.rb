class CreateDoctors < ActiveRecord::Migration[7.1]
  def change
    create_table :doctors do |t|
      t.string :specialization
      t.string :clinic

      t.timestamps
    end
  end
end
