# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Clear existing data
User.destroy_all
Philosopher.destroy_all
Quote.destroy_all
Category.destroy_all

# Create Users
User.create!([
  { first_name: "John", last_name: "Jones", email: "admin@myquotes.com", password: "admin123", password_digest: BCrypt::Password.create("admin123"), isAdmin: true, status: "Active" },
  { first_name: "Vincent", last_name: "Brown", email: "vinceb@myemail.com", password: "vince123", password_digest: BCrypt::Password.create("vince123"), isAdmin: false, status: "Active" },
  { first_name: "Alice", last_name: "Johnson", email: "ajohnson@myquote.com", password: "alice123", password_digest: BCrypt::Password.create("alice123"), isAdmin: false, status: "Active" },
  { first_name: "Bob", last_name: "Williams", email: "bwilliams@myquote.com", password: "bob123", password_digest: BCrypt::Password.create("bob123"), isAdmin: false, status: "Suspended" },
  { first_name: "Eve", last_name: "Davis", email: "edavis@myquote.com", password: "eve123", password_digest: BCrypt::Password.create("eve123"), isAdmin: false, status: "Active" }
])
puts "5 users created."

# Create Categories
Category.create!([
  { name: "Motivation" },
  { name: "Philosophy" },
  { name: "Happiness" },
  { name: "Wisdom" },
  { name: "Life" }
])
puts "5 categories created."

# Create Philosophers
Philosopher.create!([
  { first_name: "Socrates", last_name: "Greek", birth_year: -470, death_year: -399, bio: "Known for his contributions to ethics and epistemology." },
  { first_name: "Plato", last_name: "Greek", birth_year: -428, death_year: -348, bio: "Student of Socrates and founder of the Academy in Athens." },
  { first_name: "Aristotle", last_name: "Greek", birth_year: -384, death_year: -322, bio: "Contributed to many fields, including logic and ethics." },
  { first_name: "Confucius", last_name: "", birth_year: -551, death_year: -479, bio: "Philosopher known for his teachings on ethics and morality." },
  { first_name: "Immanuel", last_name: "Kant", birth_year: 1724, death_year: 1804, bio: "Known for his work in epistemology and ethics." }
])
puts "5 philosophers created."

# Create Quotes
Quote.create!([
  { body: "The unexamined life is not worth living.", publication: -399, is_public: true, comment: "A famous quote by Socrates.", philosopher_id: Philosopher.pluck(:id).sample, user_id: User.pluck(:id).sample, category_id: Category.pluck(:id).sample },
  { body: "I think, therefore I am.", publication: 1637, is_public: true, comment: "A foundational element of Western philosophy.", philosopher_id: Philosopher.pluck(:id).sample, user_id: User.pluck(:id).sample, category_id: Category.pluck(:id).sample },
  { body: "Happiness is not an abstract idea; it is concrete.", publication: 1910, is_public: true, comment: "A quote by William James.", philosopher_id: Philosopher.pluck(:id).sample, user_id: User.pluck(:id).sample, category_id: Category.pluck(:id).sample },
  { body: "Knowledge is power.", publication: 1597, is_public: true, comment: "A quote by Francis Bacon.", philosopher_id: Philosopher.pluck(:id).sample, user_id: User.pluck(:id).sample, category_id: Category.pluck(:id).sample },
  { body: "Life can only be understood backwards; but it must be lived forwards.", publication: 1843, is_public: true, comment: "A quote by Søren Kierkegaard.", philosopher_id: Philosopher.pluck(:id).sample, user_id: User.pluck(:id).sample, category_id: Category.pluck(:id).sample }
])
puts "5 quotes created."
