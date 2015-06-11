class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name, :null => false
      t.string :address, :null => false
      t.integer :spicy
      t.string :cost, :index => true
      t.string :vegetarian, :default => false, :index => true
    end
  end
end
