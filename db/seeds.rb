# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
load Rails.root.join('db/seeds/uda_members.rb')

Admin.find_or_create_by(email: "admin@udapune.org") do |a|
  a.password = "UDA@admin2026"
  a.password_confirmation = "UDA@admin2026"
end
puts "✅ Admin created: admin@udapune.org / UDA@admin2026"
