class AddTheaterTable < ActiveRecord::Migration
  def change
    create_table :theaters do |t|
      t.string :name
      t.text :image
      t.integer :movie_id
      t.integer :num_seats
      t.integer :company_id
      t.timestamps
    end
  end
end
