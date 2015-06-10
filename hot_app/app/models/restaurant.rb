class Restaurant < ActiveRecord::Base
	# attr_accessor :vegetarian, :cost, :spicy

	# has_many :customers
	has_many :users
end
