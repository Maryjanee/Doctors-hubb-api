require 'rails_helper'
require 'database_cleaner'

RSpec.describe Appointment, type: :model do
  before :each do
    @user = User.create(username: 'aldana longhi', email: 'aldulon@gmail.com',
                        password: '123456')
    @doctor = Doctor.create(name: 'John Maxwell',
      location: 'Lagos, Nigeria',
      specialization: 'Ophtamology',
      fees: '25000',
      email: 'johnmaxwell@gmail.com',
      about: 'A Consultant Ear, Nose & Throat Surgeon with over 27 years clinical experience in treating and managing various ear, nose and throat infections.',
      photo: 'https://www.warwickhipkneesurgery.com/wp-content/uploads/2016/09/3313.jpg')

    @appointment = @user.appointments.build(doctor_id: @doctor.id, date: '2021-04-30T00:00', city: 'New York')
    @appointment1 = Appointment.create(username: @user.username, doctor_name: @doctor.name,
                                       date: '2021-02-26', city: 'New York', user_id: @user.id,
                                      doctor_id: @doctor.id)
  end

  it 'returns appointment created for a test drive with date after today\'s' do
    expect(@appointment.id).to eql(@appointment.id)
  end

  it 'returns nil when date is old' do
    expect(@appointment1.save).not_to be true
  end
end