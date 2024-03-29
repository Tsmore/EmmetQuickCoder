# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admin = Admin.find_or_initialize_by(
  username: ENV['ADMIN_USERNAME'],
  email: ENV['ADMIN_EMAIL'],
)

if admin.new_record?
  admin.password = ENV['ADMIN_PASSWORD']
  admin.save!
end

test = User.find_or_initialize_by(
  username: "testuser",
  email: "test@test.com",
)
if test.new_record?
  test.password = "test1234"
  test.save!
end