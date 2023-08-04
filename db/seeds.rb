# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


# clear existing data 
Event.destroy_all

events = Event.create([
    {
        title: "Jane's Graduation",
        location: "Jane's house",
        date: DateTime.new(2023, 8, 10, 12, 0)
    },
    {
        title: "Music Festival",
        location: "Central perk",
        date: DateTime.new(2023, 10, 10, 8, 30)
    },
    {
        title: "Football game",
        location: "Local stadium",
        date: DateTime.new(2023, 9, 8, 10, 0)
    }
])