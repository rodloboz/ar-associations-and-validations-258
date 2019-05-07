class Doctor < ActiveRecord::Base
  has_many :interns # => return a collection of intern instances

  has_many :consultations
  # the through association must be defined above
  has_many :patients, through: :consultations

  validates :first_name, :last_name, presence: true
end
