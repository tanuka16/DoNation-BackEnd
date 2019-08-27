class CreateCharities < ActiveRecord::Migration[6.0]
  def change
    create_table :charities do |t|
      t.string :name
      t.string :city
      t.string :country
      t.string :category
      t.string :logo_url
      t.string :mission
      t.string :website_url

      t.timestamps
    end
  end
end
