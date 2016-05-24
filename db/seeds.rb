Appointment.destroy_all
Patient.destroy_all
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

doctor.patients.each_with_index do |patient, index|
  doctor.appointments.create(
    patient_id: patient.id,
    start_date: Time.now + index.hours,
    end_date: Time.now + (index + 1).hours,
    description: FFaker::Lorem.sentence
  )
end
