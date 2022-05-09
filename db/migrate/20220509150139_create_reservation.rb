class CreateReservation < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.references :user_id, null: false, foreign_key: true
      t.references :psychologist_id, null: false, foreign_key: true
      t.references :city_id, null: false, foreign_key: true
      t.datetime :reservation_date

      t.timestamps
    end
  end
end
