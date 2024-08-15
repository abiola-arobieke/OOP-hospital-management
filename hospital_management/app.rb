require_relative './doctor'
require_relative './technician'
require_relative './hospital'
require_relative './department'
require_relative './medical_record'
require_relative './patient'
require_relative './appointment'

doc1 = Doctor.new('Adewale Johnson', 'Ayegun, Oleyo Rd')
doc2 = Doctor.new('Mercy Abreu', 'Yanga, Edo Rd')
doc3 = Doctor.new('Faith Olowo', 'Isake Eko, Gbagada')

tech = Techincian.new('Alabi Brown', 'Orita Challengee')

patient1 = Patient.new('Seun Ajaro', 'Idera, lagos')
patient2 = Patient.new('Victor Banjo', 'Surulere, lagos')


saint_mary = Hospital.new('Saint Mary Hospital', 'Ago-Iwoye, Ogun State', 9037282632)

n_and_d = Department.new('Nutrition and Dietetics', 'Pa James Building', 'N&D')
records = Department.new('Medical Records', 'Prof Olorunda center', 'Records')

n_and_d.add_staff(doc1)
n_and_d.add_staff(doc2)
n_and_d.add_staff(doc3)

n_and_d.remove_staff(doc1)

saint_mary.add_department(n_and_d)
saint_mary.add_department(records)

seun_medical  = MedicalRecord.new(patient1, saint_mary)
victor_medical = MedicalRecord.new(patient2, saint_mary)

doc1_medical = MedicalRecord.new(doc1, saint_mary)

app1 = Appointment.new(patient1, doc2, "2024-09-02")

patient1.appointment.each do |appo|
  p appo.operational_staff.name
end




# doc1.medical.each do |pers|
#   p pers.person.medical
# end

