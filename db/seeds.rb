require "open-uri"

10.times do |i|
    print "Seeding." +  ("." * (i % 3)) + "  \r"
    sleep(0.2)
end
puts " "

puts 'Cleaning up database'
Review.destroy_all
puts 'Reviews are cleaned'
Bill.destroy_all
puts 'Bills are cleaned'
Vendor.destroy_all
puts 'Vendors are cleaned'
sleep(0.2)
puts 'Database is cleaned'

10.times do |i|
    print "Creating some new nice Vendors." +  ("." * (i % 3)) + "  \r"
    sleep(0.2)
end
puts " "

vendor_a = Vendor.create(
  name: "Spätkauf Kiosk",
  address: "Rudi-Dutschke-Straße 15, 10969 Berlin",
  business: "shop",
  phone: "" ,
  city: "Berlin" ,
  description: "Spätkauf Spetti" ,
  opens: "09:00:00 UTC +00:00",
  closes: "23:30:00 UTC +00:00"
  )
file = URI.open('https://res.cloudinary.com/dm9csvoft/image/upload/ar_1:1,b_rgb:262c35,bo_5px_solid_rgb:ffffff,c_fill,g_auto,r_max,w_1000/v1595686735/unnamed_px3nv9.jpg')
vendor_a.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
puts "Vendor #{vendor_a.id} was created"

vendor_b = Vendor.create(
  name: "Apotheke Axel-Springer-Passage",
  address: "Rudi-Dutschke-Straße 8, 10969 Berlin",
  business: "pharmacy",
  phone: "" ,
  city: "Berlin" ,
  description: "Pharmacy Pills" ,
  opens: "09:00:00 UTC +00:00",
  closes: "23:30:00 UTC +00:00"
  )
file = URI.open('https://res.cloudinary.com/dm9csvoft/image/upload/ar_1:1,b_rgb:262c35,bo_5px_solid_rgb:ffffff,c_fill,g_auto,r_max,w_1000/v1595686734/brand_khh0ee.gif')
vendor_b.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
puts "Vendor #{vendor_b.id} was created"

vendor_c = Vendor.create(
  name: "Ishin",
  address: "Charlottenstraße 16, 10117 Berlin",
  business: "restaurant",
  phone: "" ,
  city: "Berlin" ,
  description: "Asian Restaurant Japanese" ,
  opens: "09:00:00 UTC +00:00",
  closes: "23:30:00 UTC +00:00"
  )
file = URI.open('https://res.cloudinary.com/dm9csvoft/image/upload/ar_1:1,b_rgb:262c35,bo_5px_solid_rgb:ffffff,c_fill,g_auto,r_max,w_1000/v1595686734/Ishin_a5ab48a4-64f3-41e8-bc76-acd3f274468e_1200x1200_kyahsc.webp')
vendor_c.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
puts "Vendor #{vendor_c.id} was created"

vendor_d = Vendor.create(
  name: "Q Burger",
  address: "Markgrafen Str 58, Zimmerstraße 68, 10117 Berlin",
  business: "restaurant",
  phone: "" ,
  city: "Berlin" ,
  description: "Fast Food, Burger, Fries" ,
  opens: "09:00:00 UTC +00:00",
  closes: "23:30:00 UTC +00:00"
  )
file = URI.open('https://res.cloudinary.com/dm9csvoft/image/upload/ar_1:1,b_rgb:262c35,bo_5px_solid_rgb:fffbfb,c_fill,g_auto,r_max,w_1000/v1595686735/unnamed_b8lgzv.png')
vendor_d.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
puts "Vendor #{vendor_d.id} was created"

vendor_e = Vendor.create(
  name: "Bäckerei Steinecke",
  address: "Charlottenstraße 16-17, 10117 Berlin",
  business: "cafe",
  phone: "" ,
  city: "Berlin" ,
  description: "Bread Fresh" ,
  opens: "09:00:00 UTC +00:00",
  closes: "23:30:00 UTC +00:00"
  )
file = URI.open('https://res.cloudinary.com/dm9csvoft/image/upload/ar_1:1,b_rgb:262c35,bo_5px_solid_rgb:ffffff,c_fill,g_auto,r_max,w_1000/v1595686735/unnamed-1_nvv9io.jpg')
vendor_e.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
puts "Vendor #{vendor_e.id} was created"

vendor_f = Vendor.create(
  name: "Restaurant Babami",
  address: "Zimmerstraße 23, 10969 Berlin",
  business: "restaurant",
  phone: "" ,
  city: "Berlin" ,
  description: "Vegetarian Casual Late Night" ,
  opens: "09:00:00 UTC +00:00",
  closes: "23:30:00 UTC +00:00"
  )
file = URI.open('https://res.cloudinary.com/dm9csvoft/image/upload/ar_1:1,b_rgb:262c35,bo_5px_solid_rgb:ffffff,c_fill,g_auto,r_max,w_1000/v1595686735/good-food-logo-design_79169-10_csyr57.jpg')
vendor_f.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
puts "Vendor #{vendor_f.id} was created"

vendor_g = Vendor.create(
  name: "Back-Factory",
  address: "Friedrichstraße 207/208, 10969 Berlin",
  business: "cafe",
  phone: "" ,
  city: "Berlin" ,
  description: "Frech Restaurant" ,
  opens: "09:00:00 UTC +00:00",
  closes: "23:30:00 UTC +00:00"
  )
file = URI.open('https://res.cloudinary.com/dm9csvoft/image/upload/ar_1:1,b_rgb:262c35,bo_5px_solid_rgb:ffffff,c_fill,g_auto,r_max,w_1000/v1595686734/BF_Logo_RGB_qy3tmj.jpg')
vendor_g.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
puts "Vendor #{vendor_g.id} was created"

vendor_h = Vendor.create(
  name: "Lotto Shop at Checkpoint",
  address: "Friedrichstraße 209, 10969 Berlin",
  business: "shop",
  phone: "" ,
  city: "Berlin" ,
  description: "Money Lotto Games" ,
  opens: "09:00:00 UTC +00:00",
  closes: "23:30:00 UTC +00:00"
  )
file = URI.open('https://res.cloudinary.com/dm9csvoft/image/upload/ar_1:1,b_rgb:262c35,bo_5px_solid_rgb:ffffff,c_fill,g_auto,r_max,w_1000/v1595686735/lotto_hojre8.gif')
vendor_h.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
puts "Vendor #{vendor_h.id} was created"

vendor_i = Vendor.create(
  name: "Kori & Fay",
  address: "Rudi-Dutschke-Straße 28, 10969 Berlin",
  business: "restaurant",
  phone: "" ,
  city: "Berlin" ,
  description: "Asian Thai" ,
  opens: "09:00:00 UTC +00:00",
  closes: "23:30:00 UTC +00:00"
  )
file = URI.open('https://res.cloudinary.com/dm9csvoft/image/upload/ar_1:1,b_rgb:262c35,bo_5px_solid_rgb:ffffff,c_fill,g_auto,r_max,w_1000/v1595688439/fast-food-800x800_vbwdjt.jpg')
vendor_i.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
puts "Vendor #{vendor_i.id} was created"

vendor_j = Vendor.create(
  name: "Thai Sushi",
  address: "Rudi-Dutschke-Straße 27, 10969 Berlin",
  business: "restaurant",
  phone: "" ,
  city: "Berlin" ,
  description: "Asian Thai" ,
  opens: "09:00:00 UTC +00:00",
  closes: "23:30:00 UTC +00:00"
  )
file = URI.open('https://res.cloudinary.com/dm9csvoft/image/upload/ar_1:1,b_rgb:262c35,bo_5px_solid_rgb:ffffff,c_fill,g_auto,r_max,w_1000/v1595688440/Thai-Sushi-House-logo_iccv1z.jpg')
vendor_j.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
puts "Vendor #{vendor_j.id} was created"

vendor_k = Vendor.create(
  name: "Barcelona Tapas Bar Restaurant",
  address: "Friedrichstraße 211, 10969 Berlin",
  business: "restaurant" ,
  phone: "" ,
  city: "Berlin" ,
  description: "Spanish Spain Casual" ,
  opens: "09:00:00 UTC +00:00",
  closes: "23:30:00 UTC +00:00"
  )
file = URI.open('https://res.cloudinary.com/dm9csvoft/image/upload/ar_1:1,b_rgb:262c35,bo_5px_solid_rgb:ffffff,c_fill,g_auto,r_max,w_1000/v1595688440/spanish-tapas_u86hwv.jpg')
vendor_k.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
puts "Vendor #{vendor_k.id} was created"

vendor_l = Vendor.create(
  name: "Morning Drug",
  address: "Friedrichstraße 38, 10969 Berlin",
  business: "pharmacy" ,
  phone: "" ,
  city: "Berlin" ,
  description: "Spätkauf Spetti Kiosk" ,
  opens: "09:00:00 UTC +00:00",
  closes: "23:30:00 UTC +00:00"
  )
file = URI.open('https://res.cloudinary.com/dm9csvoft/image/upload/ar_1:1,b_rgb:262c35,bo_5px_solid_rgb:ffffff,c_fill,g_auto,r_max,w_1000/v1595688439/Hand-drawn-coffee-logos-design-vector-set-07_luqd71.jpg')
vendor_l.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
puts "Vendor #{vendor_l.id} was created"

vendor_m = Vendor.create(
  name: "Einstein Kaffee",
  address: "Friedrichstraße 206, 10117 Berlin",
  business: "cafe" ,
  phone: "" ,
  city: "Berlin" ,
  description: "Cosy Coffee Tea Muffins" ,
  opens: "09:00:00 UTC +00:00",
  closes: "23:30:00 UTC +00:00"
  )
file = URI.open('https://res.cloudinary.com/dm9csvoft/image/upload/ar_1:1,b_rgb:262c35,bo_5px_solid_rgb:ffffff,c_fill,g_auto,r_max,w_1000/v1595686735/einstein-vorschau_wkzkbe.jpg')
vendor_m.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
puts "Vendor #{vendor_m.id} was created"

vendor_n = Vendor.create(
  name: "Murphy’s Irish Pub at Checkpoint Charlie",
  address: "Zimmerstraße 19, 10969 Berlin",
  business: "restaurant" ,
  phone: "" ,
  city: "Berlin" ,
  description: "Irish Beer Pub Cocktails Cozy" ,
  opens: "09:00:00 UTC +00:00",
  closes: "23:30:00 UTC +00:00"
  )
file = URI.open('https://res.cloudinary.com/dm9csvoft/image/upload/ar_1:1,b_rgb:262c35,bo_5px_solid_rgb:ffffff,c_fill,g_auto,r_max,w_1000/v1595688439/2b424de2ce454ea8700014039c9bcff7_q9awcz.jpg')
vendor_n.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
puts "Vendor #{vendor_n.id} was created"

vendor_o = Vendor.create(
  name: "Coffee Fellows",
  address: "Friedrichstraße 204, 10117 Berlin",
  business: "cafe" ,
  phone: "" ,
  city: "Berlin" ,
  description: "Cosy Coffee Tea Muffins" ,
  opens: "09:00:00 UTC +00:00",
  closes: "23:30:00 UTC +00:00"
  )
file = URI.open('https://res.cloudinary.com/dm9csvoft/image/upload/ar_1:1,b_rgb:262c35,bo_5px_solid_rgb:ffffff,c_fill,g_auto,r_max,w_1000/v1595688439/a0b0c14f30b31fc5813a21dfdc714b56_dr1g4t.jpg')
vendor_o.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
puts "Vendor #{vendor_o.id} was created"

vendor_p = Vendor.create(
  name: "Army Food",
  address: "Mauerstraße 1, 10117 Berlin",
  business: "restaurant" ,
  phone: "" ,
  city: "Berlin" ,
  description: "Russian Salads" ,
  opens: "09:00:00 UTC +00:00",
  closes: "23:30:00 UTC +00:00"
  )
file = URI.open('https://res.cloudinary.com/dm9csvoft/image/upload/ar_1:1,b_rgb:262c35,bo_5px_solid_rgb:ffffff,c_fill,g_auto,r_max,w_1000/v1595688439/download_byqrmx.jpg')
vendor_p.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
puts "Vendor #{vendor_p.id} was created"

vendor_q = Vendor.create(
  name: "Barbecue Grill",
  address: "Mauerstraße 93, 10117 Berlin",
  business: "restaurant" ,
  phone: "" ,
  city: "Berlin" ,
  description: "BBQ Sauce Grill" ,
  opens: "09:00:00 UTC +00:00",
  closes: "23:30:00 UTC +00:00"
  )
file = URI.open('https://res.cloudinary.com/dm9csvoft/image/upload/ar_1:1,b_rgb:262c35,bo_5px_solid_rgb:ffffff,c_fill,g_auto,r_max,w_1000/v1595688439/barbecue-grill-logo-template-premium-vector_144543-93_ptbhrs.jpg')
vendor_q.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
puts "Vendor #{vendor_q.id} was created"

vendor_r = Vendor.create(
  name: "BlackBox Café ",
  address: "Friedrichstraße 47, 10117 Berlin",
  business: "cafe",
  phone: "" ,
  city: "Berlin" ,
  description: "Cosy Coffee Tea Muffins" ,
  opens: "09:00:00 UTC +00:00",
  closes: "23:30:00 UTC +00:00"
  )
file = URI.open('https://res.cloudinary.com/dm9csvoft/image/upload/ar_1:1,b_rgb:262c35,bo_5px_solid_rgb:ffffff,c_fill,g_auto,r_max,w_1000/v1595686734/BF_Logo_RGB_qy3tmj.jpg')
vendor_r.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
puts "Vendor #{vendor_r.id} was created"

vendor_s = Vendor.create(
  name: "Vapiano",
  address: "Friedrichstraße 50-55, 10117 Berlin",
  business: "restaurant",
  phone: "" ,
  city: "Berlin" ,
  description: "Italian Restaurant Food Casual" ,
  opens: "09:00:00 UTC +00:00",
  closes: "23:30:00 UTC +00:00"
  )
file = URI.open('https://res.cloudinary.com/dm9csvoft/image/upload/ar_1:1,b_rgb:262c35,bo_5px_solid_rgb:ffffff,c_fill,g_auto,r_max,w_1000/v1595688440/xvdvxvxc3cxo8kgvsubd_plakee.jpg')
vendor_s.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
puts "Vendor #{vendor_s.id} was created"

vendor_t = Vendor.create(
  name: "Little Green Rabbit",
  address: "Friedrichstraße 200, 10117 Berlin",
  business: "restaurant",
  phone: "" ,
  city: "Berlin" ,
  description: "Fresh Food Vegetarian Salads" ,
  opens: "09:00:00 UTC +00:00",
  closes: "23:30:00 UTC +00:00"
  )
file = URI.open('https://res.cloudinary.com/dm9csvoft/image/upload/ar_1:1,b_rgb:262c35,bo_5px_solid_rgb:ffffff,c_fill,g_auto,r_max,w_1000/v1595688439/DJvq7NTm_krjnao.jpg')
vendor_t.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
puts "Vendor #{vendor_t.id} was created"

vendor_u = Vendor.create(
  name: "La Via del Muro",
  address: "Mauerstraße 83-84, 10117 Berlin",
  business: "restaurant",
  phone: "" ,
  city: "Berlin" ,
  description: "Cosy Casual Spanish" ,
  opens: "09:00:00 UTC +00:00",
  closes: "23:30:00 UTC +00:00"
  )
file = URI.open('https://res.cloudinary.com/dm9csvoft/image/upload/ar_1:1,b_rgb:262c35,bo_5px_solid_rgb:ffffff,c_fill,g_auto,r_max,w_1000/v1595688439/diner-restaurant-logo-design-template-0899ae0c7e72cded1c0abc4fe2d76ae4_screen_oxg3qm.jpg')
vendor_u.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
puts "Vendor #{vendor_u.id} was created"

vendor_v = Vendor.create(
  name: "Otito Vietnamese Food",
  address: "Leipziger Str. 30, 10117 Berlin",
  business: "restaurant",
  phone: "" ,
  city: "Berlin" ,
  description: "Asian Pho" ,
  opens: "09:00:00 UTC +00:00",
  closes: "23:30:00 UTC +00:00"
  )
file = URI.open('https://res.cloudinary.com/dm9csvoft/image/upload/ar_1:1,b_rgb:262c35,bo_5px_solid_rgb:ffffff,c_fill,g_auto,r_max,w_1000/v1595688439/b2370d6492aa894591fbf9cd35489978_lwg1zj.png')
vendor_v.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
puts "Vendor #{vendor_v.id} was created"

vendor_w = Vendor.create(
  name: "Restaurant Tim Raue",
  address: "Rudi-Dutschke-Straße 26, 10969 Berlin",
  business: "restaurant",
  phone: "" ,
  city: "Berlin" ,
  description: "Retro Asian" ,
  opens: "09:00:00 UTC +00:00",
  closes: "23:30:00 UTC +00:00"
  )
file = URI.open('https://res.cloudinary.com/dm9csvoft/image/upload/ar_1:1,b_rgb:262c35,bo_5px_solid_rgb:ffffff,c_fill,g_auto,r_max,w_1000/v1595688440/logo_magenta_rtr_eqweyz.jpg')
vendor_w.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
puts "Vendor #{vendor_w.id} was created"

vendor_x = Vendor.create(
  name: "Westberlin",
  address: "Friedrichstraße 215, 10969 Berlin",
  business: "cafe",
  phone: "" ,
  city: "Berlin" ,
  description: "Cosy Coffee Tea Muffins" ,
  opens: "09:00:00 UTC +00:00",
  closes: "23:30:00 UTC +00:00"
  )
file = URI.open('https://res.cloudinary.com/dm9csvoft/image/upload/ar_1:1,b_rgb:262c35,bo_5px_solid_rgb:ffffff,c_fill,g_auto,r_max,w_1000/v1595688439/Coffee-Shop-800x800_m8jkk3.jpg')
vendor_x.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
puts "Vendor #{vendor_x.id} was created"

vendor_y = Vendor.create(
  name: "Nobelhart & Schmutzig",
  address: "Friedrichstraße 218, 10969 Berlin",
  business: "restaurant",
  phone: "" ,
  city: "Berlin" ,
  description: "Restaurant Cosy Beer" ,
  opens: "09:00:00 UTC +00:00",
  closes: "23:30:00 UTC +00:00"
  )
file = URI.open('https://res.cloudinary.com/dm9csvoft/image/upload/ar_1:1,b_rgb:262c35,bo_5px_solid_rgb:ffffff,c_fill,g_auto,r_max,w_1000/v1595688440/product-design-logo-brand-line-png-favpng-wpww1mj496sNc7ebnzd7wJjgC_rhu9mk.jpg')
vendor_y.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
puts "Vendor #{vendor_y.id} was created"

vendor_z = Vendor.create(
  name: "Eck Imbiss",
  address: "Puttkamerstraße 13, 10969 Berlin",
  business: "cafe",
  phone: "" ,
  city: "Berlin" ,
  description: "Fast Food" ,
  opens: "09:00:00 UTC +00:00",
  closes: "23:30:00 UTC +00:00"
  )
file = URI.open('https://res.cloudinary.com/dm9csvoft/image/upload/ar_1:1,b_rgb:262c35,bo_5px_solid_rgb:ffffff,c_fill,g_auto,r_max,w_1000/v1595688439/breakfast-restaurant-with-sunrise-spoon-fork-hipster-vintage-retro-typography-logo-design_57043-552_uejkw4.jpg')
vendor_z.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
puts "Vendor #{vendor_z.id} was created"

vendor_aa = Vendor.create(
  name: "Le Wagon Berlin",
  address: "Rudi-Dutschke-Straße 26, 10969 Berlin",
  business: "education",
  phone: "" ,
  city: "Berlin" ,
  description: "Change your life, learn to code" ,
  opens: "09:00:00 UTC +00:00",
  closes: "19:00:00 UTC +00:00"
  )
file = URI.open('https://res.cloudinary.com/dm9csvoft/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1597501870/lewagon-logo-square-fe76916e1b923ade71e253ae6dc031d936e5e8eebac4e26b0fbac650ea6ee360_lxa3qx.png')
vendor_aa.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
puts "Vendor #{vendor_aa.id} was created"


puts "Vendors Created"
puts "Creating a few Users"

10.times do
  user = User.create(
    email: Faker::Internet.email,
    password: "123456",
    name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    nick_name: Faker::Name.middle_name,
    phone_number: Faker::PhoneNumber.cell_phone_with_country_code,
    date_of_birth: Faker::Date.between(from: '1980-01-01', to: '2001-12-31'),
    gender: ['female', 'male', 'other'].sample,
    address: Faker::Address.full_address,
    )
  file = URI.open('https://res.cloudinary.com/dm9csvoft/image/upload/ar_1:1,b_rgb:262c35,bo_5px_solid_rgb:ffffff,c_fill,g_auto,r_max,w_1000/v1595795352/default-user_jw8cvi.png')
  user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  puts "User #{user.id} was created"
end

puts "Users Created"
puts "Adding some reviews"

comments = [
  "Amazing Place",
  "I would back again",
  "Best Service!",
  "The beer was amazing",
  "Good Prices",
  "The waiter was sleeping",
  "No comments",
  "Best brunch ever",
  "The mimosas were excellent",
  "I love it",
  "Best place to use the app",
  "I had a hair on my soup",
  "The booking was cancelled without notice",
  "We wait 30 mins under the rain",
  "We had to use mask while eating...",
  "Never again",
  "Good Coffee",
  "Good",
  "Fair enough",
  "Best prices in town",
]

100.times do
  review = Review.create(
    content: comments.sample,
    rating: rand(3..5),
    user_id: User.all.sample.id,
    vendor_id: Vendor.all.sample.id,
    )
  puts "Review #{review.id} was created"
end

puts "Reviews done"

puts "Creating a bill"
  bill_first = Bill.create(
    date: "2020-08-01",
    status: "pending",
    user_id: User.first.id,
    vendor_id: Vendor.first.id,
    price_cents: 2789,
    )
puts "Bill #{bill_first.id} was created"


puts "Seeds Done"
