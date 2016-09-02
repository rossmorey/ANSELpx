# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create(
  username: "rossmorey",
  password: "password",
  first_name: "Ross",
  last_name: "Morey",
  user_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/c_scale,w_233/v1472752844/picture_fo4edt.jpg",
  about: "I like Ansel Adams photography.",
  city: "Belmont",
  state: "California",
  country: "United States",
  views: 0
)

User.create(
  username: "guest",
  password: "password",
  first_name: "Guest",
  last_name: "User",
  user_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/c_scale,w_207/v1472753134/profile_qdein0.png",
)

Photo.create(
  user_id: 1,
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1472766649/ansel-adams-wilderness-1_1600_ewipxu.jpg",
  title: "Beautiful Mountains",
  description: "Wow -- so beautiful!",
  lat: 37.794095,
  lng: -119.198760
)

Photo.create(
  user_id: 1,
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1472768614/ansel-adams-2la6zy4_slv2wx.jpg",
  title: "Beautiful Bridge",
  description: "Wow -- so beautiful!",
  lat: 37.743831,
  lng: -119.566638
)
