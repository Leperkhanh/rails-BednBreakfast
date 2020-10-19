class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.integer :listing_id
      t.integer :host_id
      t.integer :guest_id
      t.string :comments

      t.timestamps
    end
  end
end
