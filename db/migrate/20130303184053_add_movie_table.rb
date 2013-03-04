class AddMovieTable < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.text :poster
      t.text :big_img
      t.string :director
      t.string :actors
      t.string :release_year
      t.text :description
      t.string :runtime
      t.timestamps
    end
  end
end
