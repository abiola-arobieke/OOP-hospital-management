class AdministeredDrug
  attr_reader :drug, :dosage, :drug, :history

  def initialize(dosage)
    # @drug = drug
    @dosage = dosage
    @history = []
  end

  def drug=(medicine)
    @drug = medicine
    drug.administered.push(medicine) unless drug.administered.include?(medicine)
  end
end