require_relative './hospital'
require_relative './staff/medical/doctor'
require_relative './staff/technical/technician'
require_relative './building/building'
require_relative './building/department'
require_relative './building/room'
require_relative './records/medical_record'
require_relative './records/appointment'
require_relative './records/prescription'
require_relative './patient'
require_relative './records/patient_history'


saint_mary = Hospital.new('Saint Mary Hospital', 'Ago-Iwoye, Ogun State', 9037282632)

building1 = Building.new('Otunba Tunwase', 6)
building2 = Building.new('Alao Akala', 4)

saint_mary.add_building(building1)
saint_mary.add_building(building2)

nd = Department.new('Nutrition and Dietetics', 'N&D')
records = Department.new('Medical Records', 'Records')

doc1 = Doctor.new('Adewale Johnson', 'Ayegun, Oleyo Rd', 'Nutrionist', "2024-09-02")
doc2 = Doctor.new('Mercy Abreu', 'Yanga, Edo Rd', 'Physician', "2024-09-02")
doc3 = Doctor.new('Faith Olowo', 'Isake Eko, Gbagada', 'Dentist', "2024-09-02")

tech = Techincian.new('Alabi Brown', 'Orita Challengee')

nd.add_staff(doc1)
nd.add_staff(doc2)
nd.add_staff(doc3)

patient1 = Patient.new('Seun Ajaro', 'Idera, lagos')
patient2 = Patient.new('Victor Banjo', 'Surulere, lagos')


p nd.staff.length

seun_medical  = MedicalRecord.new(patient1, saint_mary)
victor_medical = MedicalRecord.new(patient2, saint_mary)

# doc1_medical = MedicalRecord.new(doc1, saint_mary)

patient1.book_appointment(doc1, "2024-09-18")

medicine = Prescription.new(patient1, doc1, "2024-08-09", 'paracetamol', 'antibiotics')

health_note1 = PatientHistory.new("healthy", "2024-09-02", 'drip', 'injection', 'analgesic')
health_note2 = PatientHistory.new("healthy", "2024-09-02", 'drip', 'injection', 'analgesic')

p health_note1.adminsted_drugs

patient1.add_to_history(health_note1)
patient1.add_to_history(health_note2)

room1 = Room.new('Office 1', 'Doctor Asaolu')

nd.add_room(room1)

p room1.department

# p patient1.history

# # p doc1.prescriptions
# p patient1.prescriptions

# p doc1.appointments



# p patient1.patient_details

# patient1.appointment.each do |appo|
#   p appo.operational_staff.name
# end




# doc1.medical.each do |pers|
#   p pers.person.medical
# end

