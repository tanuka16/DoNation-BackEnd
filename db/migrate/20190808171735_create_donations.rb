class CreateDonations < ActiveRecord::Migration[6.0]
  def change
    create_table :donations do |t|
      t.integer :user_id
      t.integer :charity_id
 
      t.timestamps
    end
  end
end
