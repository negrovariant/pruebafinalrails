# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Service.create(name: "Consulta")
Service.create(name: "Hospitalizacion")
Service.create(name: "Baño")
Service.create(name: "Cirugia")
Service.create(name: "Peluqueria")

services = Service.all

10.times do |i|
    client = Client.create(name: Faker::Name.first_name, lastname: Faker::Name.last_name, phone: Faker::PhoneNumber.cell_phone, email: Faker::Internet.email, password: "123456")
    pet = Pet.create(name: Faker::Fantasy::Tolkien.character, species: Faker::Fantasy::Tolkien.race, race: Faker::Fantasy::Tolkien.race, date_of_birth:Faker::Date, additional_notes:Faker::Quote.yoda, client:client)
    veterinary = Veterinary.create(name: Faker::Name.first_name, lastname: Faker::Name.last_name, email: Faker::Internet.email, password: "123456")
    Appointment.create(date: Faker::Date, hour: Faker::Time, duration: Faker::Time, veterinary: veterinary, pet: pet, service: services.sample)
end
