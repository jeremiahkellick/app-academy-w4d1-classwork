# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create!(username: 'derek')
user2 = User.create!(username: 'Jeremiah')

artwork = Artwork.create!(
  title: 'Chinese Food',
  image_url: 'www.google.com/images/chinese_food',
  artist: user
)

artwork2 = Artwork.create!(
  title: 'Chinesee Food',
  image_url: 'www.gooogle.com/images/chinese_food',
  artist: user2
)

share = ArtworkShare.create!(
  artwork: artwork,
  viewer: user2
)

share2 = ArtworkShare.create!(
  artwork: artwork2,
  viewer: user
)
