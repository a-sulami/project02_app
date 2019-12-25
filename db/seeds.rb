# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

LastEpisode.destroy_all



pizza = LastEpisode.create(episode_number: "S05E11", user_id: 1)
grilled_cheese = LastEpisode.create(episode_number: "S02E14", user_id: 2)

a = Comment.create(content:"Wooowwww", user_id: 2)