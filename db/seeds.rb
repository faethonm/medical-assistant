Appointment.destroy_all
Patient.destroy_all
User.destroy_all

doctor = User.create(email: 'test@example.com', password: 'password')

# (1..10).each do
#   doctor.patients.create!(
#     first_name: FFaker::Name.first_name,
#     last_name: FFaker::Name.last_name,
#     email: FFaker::Internet.email,
#     phone: FFaker::PhoneNumber.phone_number
#   )
# end
#
[
  {
    first_name: 'Christina',
    last_name: 'Milikouri',
    email: 'christina.milikouri@gmail.com',
    phone: FFaker::PhoneNumber.phone_number,
    avatar_url: 'https://scontent.fsnc1-1.fna.fbcdn.net/v/t1.0-9/281405_4558749723293_663348031_n.jpg?oh=497920e986ccd5bfb2bf029b632de94e&oe=57CCD8EE'
  },
  {
    first_name: 'Alexandros',
    last_name: 'Milikouris',
    email: 'alexandros.milikouris@gmail.com',
    phone: FFaker::PhoneNumber.phone_number,
    avatar_url: 'https://scontent.fsnc1-1.fna.fbcdn.net/v/t1.0-9/13151602_10207953341568117_1082788670184287084_n.jpg?oh=f670dced107557a1448e363c7c7b3d49&oe=57CD4267'
  },
  {
    first_name: 'Faethon',
    last_name: 'Milikouris',
    email: 'faethon.milikouris@gmail.com',
    phone: FFaker::PhoneNumber.phone_number
  },
  {
    first_name: 'Chrystalla',
    last_name: 'Milikouri',
    email: 'Chrystalla.milikouri@gmail.com',
    phone: FFaker::PhoneNumber.phone_number,
    avatar_url: 'https://scontent.fsnc1-1.fna.fbcdn.net/v/t1.0-9/13179185_1743633922516438_5603522294704724340_n.jpg?oh=19759f53b088d547650166bf6d0abf2c&oe=57D05570'
  },
  {
    first_name: 'Loizos',
    last_name: 'Milikouris',
    email: 'Loizos.milikouris@gmail.com',
    phone: FFaker::PhoneNumber.phone_number,
    avatar_url: 'https://scontent.fsnc1-1.fna.fbcdn.net/v/t1.0-9/988807_10202077382672023_305102914_n.jpg?oh=f12572eeedd225a5e549f46c8ce279eb&oe=57E22D14'
  },
  {
    first_name: 'Mikaella',
    last_name: 'Milikouri',
    email: 'Mikaella.milikouri@gmail.com',
    phone: FFaker::PhoneNumber.phone_number,
    avatar_url: 'https://scontent.fsnc1-1.fna.fbcdn.net/v/t1.0-9/10649906_954584357885808_3228112064817891906_n.jpg?oh=b3879b96c8a462c8cb41bf54b0d8dc61&oe=57DF3A62'
  }
].each do |el|
  doctor.patients.create!(
    first_name: el[:first_name],
    last_name: el[:last_name],
    email: el[:email],
    phone: el[:phone],
    avatar_url: el[:avatar_url]
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
