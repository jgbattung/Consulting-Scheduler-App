# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)



Consultation.destroy_all
ConsultationType.destroy_all
User.destroy_all


user1 = User.create!(
    consultation_link: 'coachji',
    email: 'coachjireh@example.com',
    name: 'Jireh Battung',
    specialization: 'Weightlifting Training',
    password: '123456',
    password_confirmation: '123456'
)

user2 = User.create!(
    consultation_link: 'jgarcia',
    email: 'john@social.com',
    name: 'John Garcia',
    specialization: 'Social Media Marketing',
    password: '123456',
    password_confirmation: '123456'
)

consultation_type1 = ConsultationType.create!(
    color: '#808080',
    description: 'An introductory online weighlifting consultation with Coach Jireh that will set your basic goals and how to get started.',
    duration: 15,
    location: 'Zoom',
    name: 'Basic Weightlifting Consultation',
    payment_required: false,
    price: nil,
    user: user1
)

consultation_type2 = ConsultationType.create!(
    color: '#A020F0',
    description: 'An intermediate weighlifting consultation where you will be given a personalized 8-week program to achieve your fitness goals',
    duration: 30,
    location: 'Zoom',
    name: 'Intermediate Weightlifting Consultation',
    payment_required: false,
    price: nil,
    user: user1
)

consultation_type3 = ConsultationType.create!(
    color: '#FFD700',
    description: 'A 1-hour, personal, 1-on-1 coaching with Coach Ji at any of of our partner gyms.',
    duration: 60,
    location: "Gold's Gym",
    name: 'Advanced Weightlifting Coaching',
    payment_required: true,
    price: 100,
    user: user1
)

consultation_type4 = ConsultationType.create!(
    color: '#A020F0',
    description: 'Receive 5 ready-to-use social media assets according to your brand identity',
    duration: 60,
    location: "Zoom",
    name: 'Social Media Assets Package',
    payment_required: true,
    price: 150,
    user: user2
)

consultation_type5 = ConsultationType.create!(
    color: '#FFD700',
    description: 'Receive a complete social media branding package including images and videos, copies, scheduled postings and so much more!',
    duration: 240,
    location: "Zoom",
    name: 'Full Branding Package',
    payment_required: true,
    price: 1000,
    user: user2
)

puts "Successfully seeded!"

