# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


User.destroy_all
ConsultationType.destroy_all

user1 = User.create!(
    consultation_link: 'coachji',
    email: 'coachjireh@example.com',
    name: 'Jireh Battung',
    password: '123456',
    password_confirmation: '123456'
)

consultation_type1 = ConsultationType.create!(
    color: '#808080',
    description: 'A 15-minute introductory online weighlifting consultation with Coach Jireh',
    duration: 15,
    location: 'Zoom',
    name: 'Basic Weightlifting Consultation',
    payment_required: false,
    price: nil,
    user: user1
)

consultation_type2 = ConsultationType.create!(
    color: '#A020F0',
    description: 'A 30-minute online weighlifting consultation with Coach Jireh',
    duration: 30,
    location: 'Zoom',
    name: 'Intermediate Weightlifting Consultation',
    payment_required: false,
    price: nil,
    user: user1
)

consultation_type3 = ConsultationType.create!(
    color: '#FFD700',
    description: 'A 1-hour face-to-face weighlifting consultation with Coach Jireh',
    duration: 60,
    location: "Gold's Gym",
    name: 'Advanced Weightlifting Coaching',
    payment_required: true,
    price: 100,
    user: user1
)

puts "Successfully seeded!"

