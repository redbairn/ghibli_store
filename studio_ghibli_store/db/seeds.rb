# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#User
u1 = User.create(:first_name => 'John', :last_name => "Smith", :email => 'redbairn@gmail.com', :encrypted_password => 'userPW1', :mobile_number => '0861234567', :is_deleted => 0)
u1.save

#Order

#Order_Items

#Product
p1 = Product.create(:title => 'Key Chain No Face Man', :cost_price => 3.99)
p1.save