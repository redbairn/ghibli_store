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

#Categories
cc1 = Category.create(:title => 'Accessories', :description => 'Bags, Laptop Covers, Nail Art and more!', :image => 'accessoriescategory.jpg')
cc1.save
cc2 = Category.create(:title => 'Clothing', :description => 'Here we have a large selection of Studio Ghibli clothing. Our t-shirts are very popular, but we have many products from baby clothes, up to studio ghibli womans clothes and leggings.', :image => 'clothingcategory.jpg')
cc2.save
cc3 = Category.create(:title => 'Figures and Toys', :description => 'Plush Soft Toys, figurines and more', :image => 'toyscategory.jpg')
cc3.save
cc4 = Category.create(:title => 'Jewellery', :description => 'Rings, pins, earrings, etc', :image => 'jewellerycategory.jpg')
cc4.save
cc5 = Category.create(:title => 'Posters and Prints', :description => 'Great prints that will bring your wall to life!', :image => 'posterscategory.jpg')
cc5.save
cc6 = Category.create(:title => 'Phone Cases', :description => 'Phone cases with designs from your favourite movies!', :image => 'phonecasecategory.jpg')
cc6.save
cc7 = Category.create(:title => 'Stationary', :description => 'Office or school stationary', :image => 'stationarycategory.jpg')
cc7.save
cc8 = Category.create(:title => 'Other Gifts', :description => 'Anything that doesnt fit into the categories!', :image => 'othercategory.jpg')
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
p1 = Product.create(:title => 'Key Chain No Face Man', :description => 'No Face Keychain is made from high-quality materials and allows you to keep your keys handy around your wrist. Leaving your hands free to do other things. This is the perfect keychain for fans of Spirited Away.', :colour => 'black', :cost_price => 3.99, :image_url => 'product-image-keychain-noface.jpg', :categories_id => 1, :supplier_id => 1)
p1.save
p2 = Product.create(:title => 'Mononoke Forest T-shirt', :description => 'This beautifully 100% handcrafted tshirt is made of 100% Cotton for that extra premium finish. The material also allows the tshirt to be incredibly comfortable and durable.', :colour => 'Black', :cost_price => 22.99, :image_url => 'Monoke_tshirt.jpg', :categories_id => 2, :supplier_id => 1)
p2.save
p3 = Product.create(:title => 'Luxury Catbus Plush / Soft Toy', :description => 'This soft stuffed catbus comes ready for lots of fun and cuddles! Three different sizes to choose from. High quality material and washproof, the perfect companion for your little Totoros', :colour => 'Yellow', :cost_price => 17.99, :image_url => 'Totoro_Yellow_Cat_Bus.jpg', :categories_id => 3, :supplier_id => 1)
p3.save
p4 = Product.create(:title => 'Totoro Pin Collection', :description => 'Totoro presents these super cute Pins! Perfect to attatch on clothes or a backpack!', :colour => 'Mixed', :cost_price => 10.99, :image_url => 'Totoro_Pin_Collection.jpg', :categories_id => 4, :supplier_id => 1)
p4.save
p5 = Product.create(:title => 'Fly Totoro Fly Necklace', :description => 'A super cute necklace featuring everyones favorite from the Studio Ghibli animated film. This initial necklace would be a fabulous gift for girlfriend, sister, Mothers Day, Christmas or a birthday gift.', :colour => 'Silver', :cost_price => 5.99, :image_url => 'Flying_Totoro_Necklace.jpg', :categories_id => 4, :supplier_id => 1)
p5.save
p6 = Product.create(:title => 'Spirited Away Poster/ Print', :description => 'Any Spirited Away fans here? Check out this beautiful Japanese style poster print! Brighten up your walls with this unique design, perfect for any room in your home, apartment or office.', :colour => 'Mixed', :cost_price => 7.99, :image_url => 'Spirited_Away_Print_Poster_Frog.jpg', :categories_id => 5, :supplier_id => 1)
p6.save
p7 = Product.create(:title => 'Totoro Satchel / Sling bag', :description => 'Large enough to carry all of your essentials for your park day. This bag is beautifully made and sturdy enough to use everyday..', :colour => 'Mixed', :cost_price => 31.99, :image_url => 'Totoro-Satchel-bag.jpg', :categories_id => 1, :supplier_id => 1)
p7.save

# Roles
['user', 'admin'].each do |role|
  Role.find_or_create_by({title: role})
end

#Suppliers
s1 = Supplier.create(:supplier_name => 'Tamaki Niime Co., Ltd', :addressLine1 => 'Nishiwaki-shi', :addressLine2 => 'Hyogo', :addressLine3 =>'Japan', :phone_number => 1123456789, :email => 'info@tamakiniime.com', :is_deleted => 0)
s1.save


