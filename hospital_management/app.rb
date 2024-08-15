require_relative './doctor'
require_relative './technician'
require_relative './hospital'
require_relative './department'
require_relative './medical_record'
require_relative './patient'

doc1 = Doctor.new('Adewale Johnson', 'Ayegun, Oleyo Rd')
tech = Techincian.new('Alabi Brown', 'Orita Challengee')

patient1 = Patient.new('Seun Ajaro', 'Idera, lagos')
patient2 = Patient.new('Victor Banjo', 'Surulere, lagos')


saint_mary = Hospital.new('Saint Mary Hospital', 'Ago-Iwoye, Ogun State', 9037282632)

n_and_d = Department.new('Nutrition and Dietetics', 'Pa James Building', 'N&D')
records = Department.new('Medical Records', 'Prof Olorunda center', 'Records')


saint_mary.add_department(n_and_d)
saint_mary.add_department(records)

seun_medical  = MedicalRecord.new(patient1, saint_mary)
victor_medical = MedicalRecord.new(patient2, saint_mary)

doc1_medical = MedicalRecord.new(doc1, saint_mary)

doc1.medical.each do |pers|
  p pers.person.medical
end

