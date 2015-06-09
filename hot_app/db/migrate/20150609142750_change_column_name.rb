class ChangeColumnName < ActiveRecord::Migration
  def change
  	rename_column :restaurants
  end
end
