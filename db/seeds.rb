# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'faker'
Faker::Config.locale='fr'
Faker::UniqueGenerator.clear

Email.destroy_all
User.destroy_all
ActiveRecord::Base.connection.tables.each do |t|
	ActiveRecord::Base.connection.reset_pk_sequence!(t)
end


10.times do |i|
  Email.create!(
    object: Faker::Lorem.sentence,
    body: Faker::Lorem.paragraph(sentence_count: rand(3..10)),
    read: [false, true].sample
  )
end

3.times do |i|
  User.create!(
    name: Faker::Name.first_name,
  )
end



