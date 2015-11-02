class CreateShoppingCartAddresses < ActiveRecord::Migration
  def change
    create_table :shopping_cart_addresses do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :zipcode, limit: 5
      t.string :city
      t.string :country
      t.string :phone, limit: 12
      t.string :country

      t.timestamps null: false
    end
  end
end
