# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)

case Rails.env
when "development"
  Book.find_or_create_by!(title: "the Life of a turtle") do |book|
    book.author = "A great author"
    book.price = 10
    book.published_date = Date.new(2026, 9, 12)
  end

  Book.find_or_create_by!(title: "the Life of a bug") do |book|
    book.author = "A great author"
    book.price = 10
    book.published_date = Date.new(2026, 9, 12)
  end
  Book.find_or_create_by!(title: "the Life of a tub") do |book|
    book.author = "A great author"
    book.price = 10
    book.published_date = Date.new(2026, 9, 12)
  end

  Book.find_or_create_by!(title: "the Life of a dump") do |book|
    book.author = "A great author"
    book.price = 10
    book.published_date = Date.new(2026, 9, 12)
  end
  Book.find_or_create_by!(title: "the Life of a shup") do |book|
    book.author = "A great author"
    book.price = 10
    book.published_date = Date.new(2026, 9, 12)
  end

when "test"
  # smaller/faster fixture-like data for specs
  Book.find_or_create_by!(title: "Test Book One") do |book|
    book.author = "Test Author"
    book.price = 5
    book.published_date = Date.new(2026, 1, 1)
  end

  Book.find_or_create_by!(title: "Test Book twho") do |book|
    book.author = "Test Author"
    book.price = 5
    book.published_date = Date.new(2026, 1, 1)
  end


  Book.find_or_create_by!(title: "Test Book three") do |book|
    book.author = "Test Author"
    book.price = 5
    book.published_date = Date.new(2026, 1, 1)
  end


  Book.find_or_create_by!(title: "Test Book four") do |book|
    book.author = "Test Author"
    book.price = 5
    book.published_date = Date.new(2026, 1, 1)
  end


  Book.find_or_create_by!(title: "Test Book five") do |book|
    book.author = "Test Author"
    book.price = 5
    book.published_date = Date.new(2026, 1, 1)
  end

  Book.find_or_create_by!(title: "Test Book six") do |book|
    book.author = "Test Author"
    book.price = 5
    book.published_date = Date.new(2026, 1, 1)
  end

when "production"
  # maybe just the bare minimum required records, no fake/demo data
  # e.g. admin user, default categories, etc.
    Book.find_or_create_by!(title: "Philosipher stone") do |book|
    book.author = "JK rowling"
    book.price = 5
    book.published_date = Date.new(2026, 1, 1)
  end

  Book.find_or_create_by!(title: "Deathly howls") do |book|
    book.author = "JK rowling"
    book.price = 5
    book.published_date = Date.new(2026, 1, 1)
  end
else
  raise "Unknown Rails.env: #{Rails.env}"
end
