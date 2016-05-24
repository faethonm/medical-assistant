User.destroy_all
doctor = User.create(email: 'test@example.com', password: 'password')

(1..10).each do
  doctor.patients.create!(
    first_name: FFaker::Name.first_name,
    last_name: FFaker::Name.last_name,
    email: FFaker::Internet.email,
    phone: FFaker::PhoneNumber.phone_number
  )
end

