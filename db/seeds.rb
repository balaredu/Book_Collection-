# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Book.create!([
    {title: "the Life of a turtle", author: "A great authoer", price: 10, published_date: Date.new(2026, 9, 12)},
    {title: "the Life of a bug", author: "A great authoer", price: 10, published_date: Date.new(2026, 9, 12)},
    {title: "the Life of a frog", author: "A great authoer", price: 10, published_date: Date.new(2026, 9, 12)},
    {title: "the Life of a truck", author: "A great authoer", price: 10, published_date: Date.new(2026, 9, 12)}
])