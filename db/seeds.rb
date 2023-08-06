# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


# clear existing data 
# Event.destroy_all

# events = Event.create([
#     {
#         title: "Jane's Graduation",
#         location: "Jane's house",
#         date: DateTime.new(2023, 8, 10, 12, 0)
#     },
#     {
#         title: "Music Festival",
#         location: "Central perk",
#         date: DateTime.new(2023, 10, 10, 8, 30)
#     },
#     {
#         title: "Football game",
#         location: "Local stadium",
#         date: DateTime.new(2023, 9, 8, 10, 0)
#     }
# ])


User.destroy_all
Event.destroy_all

# Create Creators (Users)
creator1 = User.create(name: 'John Doe', email: 'john@example.com', password: 'password')
creator2 = User.create(name: 'Jane Smith', email: 'jane@example.com', password: 'password')

# Create Events and associate them with the creators
event1 = creator1.created_events.create(title: 'Summer Picnic', location: 'Central Park', date: DateTime.new(2023, 8, 10, 12, 0))
event2 = creator1.created_events.create(title: 'Music Festival', location: 'Local Stadium', date: DateTime.new(2023, 9, 5, 18, 30))
event3 = creator2.created_events.create(title: 'Board Games Night', location: 'Community Center', date: DateTime.new(2023, 8, 20, 19, 0))
