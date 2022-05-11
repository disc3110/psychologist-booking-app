class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :psychologist, null: false, foreign_key: true
      t.references :city, null: false, foreign_key: true
      t.datetime :reservation_date

      t.timestamps
    end
  end
end
