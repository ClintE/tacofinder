class AddSpicyAndVegetarianToUsers < ActiveRecord::Migration
  def change
    add_column :users, :spicy, :integer
    add_column :users, :vegetarian, :string
  end
end
