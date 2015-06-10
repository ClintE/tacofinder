class ChangeVegetarianTypeInRestaurants < ActiveRecord::Migration
  def change
  	change_column :restaurants, :vegetarian, :string  
  end
end
