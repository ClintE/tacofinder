class ChangeColumnName < ActiveRecord::Migration
  def change
  	rename_column :restaurants, :dietary, :vegetarian
  end
end
