class CreateCharities < ActiveRecord::Migration[6.0]
  def change
    create_table :charities do |t|
      t.string :name
      t.string :state
      t.string :category
      t.string :img_url
      t.string :description
      t.string :website_url

      t.timestamps
    end
  end
end
