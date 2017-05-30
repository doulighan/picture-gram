# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(email: "doulighan@gmail", username: "devin", password: "devin")
User.create(email: "man@gmail", username: "man", password: "man")

picture = Picture.create(title: "title")
Picture.create(title: "title2")

tag = Tag.create(name: "tag1")
Tag.create(name: "tag2")

comment = Comment.create(content: "content1")
Comment.create(content: "content2")

[1,2,3].each do |num|
  User.create(
    username:"user#{num}",
    email: "user#{num}@example.com",
    password: "test123"
  )
end
 
["Nature", "NYC", "Art", "Humor"].each do |tag_name|
  Tag.create(name: tag_name)
end
 
url = "http://www.defenders.org/sites/default/files/styles/large/public/dolphin-kristian-sekulic-isp.jpg"
 

Picture.create(
  image_url: "http://lorempixel.com/150/150",
  title: "Dog!",
  user_id: User.first.id
)

Picture.create(
  image_url: "http://lorempixel.com/160/160",
  title: "Grasshopper!",
  user_id: User.first.id
)


Picture.create(
  image_url: "http://lorempixel.com/180/158",
  title: "Doggo!",
  user_id: User.first.id
)


Picture.create(
  image_url: "http://lorempixel.com/140/140",
  title: "Coyote!",
  user_id: User.first.id
)


Picture.create(
  image_url: "http://lorempixel.com/170/170",
  title: "Space Doggo!",
  user_id: User.first.id
)






