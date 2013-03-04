class AddTicketTable < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.integer :theater_id
      t.integer :seat_number
      t.integer :user_id
      t.integer :price, :default => 10
      t.boolean :is_bought, :default => false
      t.timestamps
    end
  end
end
