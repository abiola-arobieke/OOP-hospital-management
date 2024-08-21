require_relative './hospital'
require_relative './staff/medical/doctor'
require_relative './staff/medical/nurse'
require_relative './staff/technical/technician'
require_relative './staff/technical/pharmacist'
require_relative './building/building'
require_relative './building/ward'
require_relative './building/department'
require_relative './building/room'
require_relative './records/medical_record'
require_relative './records/prescription'
require_relative './patient'
require_relative './records/patient_history'
require_relative './pharmacy/administer_drug'
require_relative './pharmacy/drug'
require_relative './visit'
require_relative './diagnosis/diagnosis_type'
require_relative './diagnosis/diagnosis'

saint_mary = Hospital.new('Saint Mary Hospital', 'Ago-Iwoye, Ogun State', 9037282632)

building1 = Building.new('Otunba Tunwase', 6)
building2 = Building.new('Alao Akala', 4)

ward1 = Ward.new('ward 1', 'gynacology')
ward2 = Ward.new('ward 1', 'e anc c')

saint_mary.add_building(building1)
saint_mary.add_building(building2)

nd = Department.new('Nutrition and Dietetics', 'N&D')
records = Department.new('Medical Records', 'Records')

doc1 = Doctor.new('Adewale Johnson', 'Ayegun, Oleyo Rd', 'Nutrionist', "2024-09-02")
doc2 = Doctor.new('Mercy Abreu', 'Yanga, Edo Rd', 'Physician', "2024-09-02")
doc3 = Doctor.new('Faith Olowo', 'Isake Eko, Gbagada', 'Dentist', "2024-09-02")

nurse1 = Nurse.new('Faith Olowo', 'Isake Eko, Gbagada', 'Maid', "2024-09-02")

tech = Technician.new('Alabi Brown', 'Orita Challengee')

nd.add_staff(doc1)
nd.add_staff(doc2)
nd.add_staff(doc3)

patient1 = Patient.new('Seun Ajaro', 'Idera, lagos')
patient2 = Patient.new('Victor Banjo', 'Surulere, lagos')

ward1.add_patient(patient1)

seun_medical  = MedicalRecord.new(patient1, saint_mary)
victor_medical = MedicalRecord.new(patient2, saint_mary)

# doc1_medical = MedicalRecord.new(doc1, saint_mary)

patient1.book_appointment(doc1, "2024-09-18")

medicine = Prescription.new(patient1, doc1, "2024-08-09", 'paracetamol', 'antibiotics')

room1 = Room.new('Office 1', 'Doctor Asaolu')

nd.add_room(room1)

pharm1 = Pharmarcist.new('David White', 'Ologuner, Ibadan', '2024-09-02', 'm')

antibiotics = Drug.new(2324, 'Orelox', 600, '500mg tetracyline', 'Injection')
pain_reliever = Drug.new(2324, 'Ibucap', 1200, '100mg ibruophen', 'Injection')

pharm1.add_drug(antibiotics)
pharm1.add_drug(pain_reliever)

nurse1.administer_drug('hospitalized', patient1, antibiotics, 500, '2024-07-03')

p patient1.health_record

visit1 = Visit.new(patient1, doc1)

gall_stone = DiagnosisType.new("2387", 'kidney disease')

diagnose1 = Diagnosis.new(patient1, gall_stone)
