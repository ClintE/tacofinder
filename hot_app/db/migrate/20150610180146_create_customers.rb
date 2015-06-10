class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
    	t.integer :user_id
    	t.integer :restaurant_id
    end
    add_index :customers, :user_id
    add_index :customers, :restaurant_id
  end
end
