class Intern < ActiveRecord::Base
  # AR creates accessors for all DB columns
  belongs_to :doctor # it looks for a doctor_id

  has_many :patients
  has_many :consultations, through: :patients
  has_many :doctors, through: :consultations
end
