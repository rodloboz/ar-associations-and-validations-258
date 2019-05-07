class Patient < ActiveRecord::Base
  belongs_to :intern

  has_many :consultations
  has_many :doctors, through: :consultations

  # validates :last_name, uniqueness: true
  validates :first_name, uniqueness: { scope: :last_name }
end
