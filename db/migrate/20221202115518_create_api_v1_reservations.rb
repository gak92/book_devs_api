class CreateApiV1Reservations < ActiveRecord::Migration[7.0]
  def change
    create_table :api_v1_reservations do |t|
      t.string :name
      t.date :reservation_date
      t.string :city
      t.references :user, null: false, foreign_key: true
      t.references :developer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
