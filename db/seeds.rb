# frozen_string_literal: true

doctors = [
  {
    name: 'John Maxwell',
    location: 'Lagos, Nigeria',
    specialization: 'Ophtamology',
    fees: '25000',
    email: 'johnmaxwell@gmail.com',
    about: 'A Consultant Ear, Nose & Throat Surgeon with over 27 years clinical experience in treating and managing various ear, nose and throat infections.',
    photo: 'https://www.warwickhipkneesurgery.com/wp-content/uploads/2016/09/3313.jpg'
  },
  {
    name: 'Darel Wilson',
    location: 'Delta, Nigeria',
    specialization: 'Dietician',
    fees: '20000',
    email: 'darelwilson@gmail.com',
    about: 'A Consultant Ear, Nose & Throat Surgeon with over 27 years clinical experience in treating and managing various ear, nose and throat infections.',
    photo: 'https://www.pinnaclecare.com/wp-content/uploads/2017/12/bigstock-African-young-doctor-portrait-28825394.jpg'
  },
  {
    name: 'Mary Rowland',
    location: 'London UK',
    specialization: 'Psycologist',
    fees: '35000',
    email: 'maryrow@gmail.com',
    about: 'A Consultant Ophthalmologist who is experienced in medical and surgical management of the eye and visual system..',
    photo: 'https://www.andersonmoores.com/uploads/images/8G7VG8KCCHVADBE4V42M.jpeg'
  },
  {
    name: 'Anne Hathaway',
    location: 'Texas US',
    specialization: 'Public Health',
    fees: '30000',
    email: 'annehat@gmail.com',
    about: 'I am a Professor of Public Health Opthalmology with 38 years experience in the practice of medicine. The treatment and correction of all eyes related ailments is my specialty. My services include Medical, Surgical and Optical.',
    photo: 'https://www.nycheadshot.com/wp-content/uploads/2016/09/15-1024x960.jpg'
  },
  {
    name: 'Adebisi Sule',
    location: 'Texas US',
    specialization: 'General Medicine',
    fees: '30000',
    email: 'annehat@gmail.com',
    about: 'I am a Professor of Public Health Opthalmology with 38 years experience in the practice of medicine. The treatment and correction of all eyes related ailments is my specialty. My services include Medical, Surgical and Optical.',
    photo: 'http://www.johnsonfamilydentistry.net/wp-content/uploads/2016/11/Staff-Headshots-Aug-2017-006.jpg'
  }
]

doctors.each do |obj|
  Doctor.create(obj)
end
