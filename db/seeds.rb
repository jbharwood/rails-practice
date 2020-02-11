# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(username: "Joseph", password: "password")
User.create(username: "Steve", password: "steveword")
Message.create(user_id: 1, subject: "sub", content: "dope stuff", hidden: false)
Message.create(user_id: 1, subject: "cats", content: "dope stuff", hidden: true)
Message.create(user_id: 2, subject: "music", content: "music stuff", hidden: false)
Message.create(user_id: 2, subject: "dogs", content: "cat stuff", hidden: true)
Attachment.create(message_id: 1, location: "google")
Attachment.create(message_id: 1, location: "facebook")
Attachment.create(message_id: 2, location: "yahoo")
Attachment.create(message_id: 2, location: "instagram")
