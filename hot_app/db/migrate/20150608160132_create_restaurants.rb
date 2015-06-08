class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.integer :spicy
      t.string :cost
      t.string :dietary
    end
  end
end
