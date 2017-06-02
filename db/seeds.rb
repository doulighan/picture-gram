User.create(username: "devin", email: "doulighan", password: "devin")

 
["Nature", "NYC", "Art", "Humor"].each do |tag_name|
  Tag.create(name: tag_name)
end
art = Tag.create(name: "Art")
other = Tag.create(name: "Other")


pic = Picture.create(
  image_url: "http://lorempixel.com/150/150",
  title: "Random",
  user_id: User.first.id
)
pic.tags << Tag.find_by(name: "Art")

pic = Picture.create(
  image_url: "http://lorempixel.com/160/160",
  title: "Random",
  user_id: User.first.id
)
pic.tags << other


pic = Picture.create(
  image_url: "http://lorempixel.com/180/158",
  title: "Random",
  user_id: User.first.id
)
pic.tags << Tag.find_by(name: "Art")


pic = Picture.create(
  image_url: "http://lorempixel.com/140/140",
  title: "Random",
  user_id: User.first.id
)
pic.tags << other

pic = Picture.create(
  image_url: "http://lorempixel.com/170/170",
  title: "Random",
  user_id: User.first.id
)
pic.tags << Tag.find_by(name: "Art")




pic = Picture.create(
  image_url: "https://repaircafe.org/wp-content/uploads/2016/01/Blauw_blije-bezoeker1-400x400.jpg",
  title: "Happy Face",
  user_id: User.first.id
)
pic.tags << Tag.find_by(name: "Humor")
pic.tags << Tag.create(name: "Random")

pic = Picture.create(
  image_url: "https://pbs.twimg.com/profile_images/76034522/gallery400thumb_400x400.jpg",
  title: "400",
  user_id: User.first.id
)
pic.tags << Tag.find_by(name: "Random")

pic = Picture.create(
  image_url: "https://repaircafe.org/wp-content/uploads/2016/01/Blauw_blije-bezoeker1-400x400.jpg",
  title: "Space Doggo!",
  user_id: User.first.id
)
pic.tags << Tag.find_by(name: "Humor")

pic = Picture.create(
  image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b3/Tsubasa_422-6.jpg/300px-Tsubasa_422-6.jpg",
  title: "Train",
  user_id: User.first.id
)
pic.tags << Tag.create(name: "machine")

pic = Picture.create(
  image_url: "https://images-na.ssl-images-amazon.com/images/M/MV5BYTQ4MjA4NmYtYjRhNi00MTEwLTg0NjgtNjk3ODJlZGU4NjRkL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UY268_CR10,0,182,268_AL_.jpg",
  title: "Movie Poster",
  user_id: User.first.id
)
pic.tags << Tag.find_by(name: "Art")
pic.tags << Tag.create(name: "Old")

pic = Picture.create(
  image_url: "https://www.timeshighereducation.com/sites/default/files/styles/the_breaking_news_image_style/public/istock_000018699039_small.jpg?itok=7cmE4qo1",
  title: "Shakespear",
  user_id: User.first.id
)
pic.tags << Tag.find_by(name: "Art")
pic.tags << Tag.find_by(name: "Old")

pic = Picture.create(
  image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Britair.b737-400.g-docp.arp.jpg/300px-Britair.b737-400.g-docp.arp.jpg",
  user_id: User.first.id
)
pic.tags << Tag.find_by(name: "machine")

