# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Restaurant.create(name: 'Taqueria Mi Trailita', address: '301 Manor Rd.', spicy: 6, cost: 'cheap', vegetarian: 'No')
Restaurant.create(name: 'Dos Batos', address: '2525 W Anderson Ln #175', spicy: 7, cost: 'cheap', vegetarian: 'No')
Restaurant.create(name: "Torchy's Tacos", address: '2801 Guadalupe St', spicy: 7, cost: 'cheap', vegetarian: 'Yes')
Restaurant.create(name: 'Enchiladas Y Mas', address: '1911 W Anderson Ln', spicy: 5, cost: 'moderate', vegetarian: 'Yes')
Restaurant.create(name: 'Juan in a Million', address: '2300 E Cesar Chavez St', spicy: 8, cost: 'moderate', vegetarian: 'Yes')
Restaurant.create(name: 'El Azteca', address: '2600 E 7th St,', spicy: 7, cost: 'cheap', vegetarian: 'Yes')

# Taqueria Mi Trailita
# 5301 Manor Rd
# Austin, TX 78723
# (512) 497-9877


# Dos Batos
# 2525 W Anderson Ln #175
# Austin, TX 78757
# (512) 452-0001

# Torchy's Tacos
# 2801 Guadalupe St
# Austin, TX 78701
# (512) 494-8226

# Enchiladas Y Mas
# 1911 W Anderson Ln
# Austin, TX 78757
# (512) 467-7100

# Juan in a Million
# 2300 E Cesar Chavez St
# Austin, TX 78702
# (512) 472-3872

# El Azteca
# 2600 E 7th St,
# Austin, TX 78702
# (512) 477-4701



# create_table :restaurants do |t|
#       t.string :name
#       t.string :address
#       t.integer :spicy
#       t.string :cost
#       t.string :dietary

