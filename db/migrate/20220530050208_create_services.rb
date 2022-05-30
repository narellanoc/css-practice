class CreateServices < ActiveRecord::Migration[7.0]
  def change
    create_table :services do |t|
      t.string "date"
      t.string "dental_clinic"
      t.string "patient"
      t.string "procedure"
      t.integer "total_payment"
      t.integer "income"
      t.integer "user_id"
      t.timestamps
    end
  end
end
