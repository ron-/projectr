class AddUserTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string  :name
      t.string  :email
      t.string  :password_digest
      t.integer :balance, :default => 0
      t.boolean :is_admin, :default => false
      t.timestamps
    end
  end
end
