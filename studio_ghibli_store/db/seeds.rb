# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Addresses
a1 = Address.create(:addressLine1 => '1 Crap Lane', :addressLine2 => 'Harbour Area', :addressLine3 => 'The Plaza', :county => 'Wicklow', :eircode => 'A63 AD96', :user_id => 1)
a1.save

#Catalog_Categories
cc1 = CatalogCategory.create(:title => 'Accessories')
cc1.save
cc2 = CatalogCategory.create(:title => 'Clothing')
cc2.save
cc3 = CatalogCategory.create(:title => 'Figures and Toys')
cc3.save
cc4 = CatalogCategory.create(:title => 'Jewellery')
cc4.save
cc5 = CatalogCategory.create(:title => 'Posters and Prints')
cc5.save
cc6 = CatalogCategory.create(:title => 'Phone Cases')
cc6.save
cc7 = CatalogCategory.create(:title => 'Stationary')
cc7.save
cc8 = CatalogCategory.create(:title => 'Other Gifts')
cc8.save

#User
u1 = User.create(:first_name => 'John', :last_name => "Smith", :email => 'redbairn@gmail.com', :encrypted_password => 'userPW1', :mobile_number => '0861234567', :is_deleted => 0, :role_id => 1 )
u1.save

#User_Registration
ur1 = UserRegistration.create(:first_name => 'John', :last_name => "Smith", :email => 'redbairn@gmail.com', :password => 'userPW1', :mobile_number => '0861234567', :user_id => 1)
ur1.save


#Order
#Order_Items
#Product
p1 = Product.create(:title => 'Key Chain No Face Man', :description => 'No Face Keychain is made from high-quality materials and allows you to keep your keys handy around your wrist. Leaving your hands free to do other things. This is the perfect keychain for fans of Spirited Away.', :colour => 'black', :cost_price => 3.99, :image_url => 'product-image-keychain-noface.jpg', :catalog_categories_id => 1)
p1.save

#Roles
p1 = Role.create(:title => 'System Admin')
p1.save
p2 = Role.create(:title => 'Admin')
p2.save
p3 = Role.create(:title => 'Normal User')
p3.save