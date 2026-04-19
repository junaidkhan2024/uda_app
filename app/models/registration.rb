class Registration < ApplicationRecord
  SPECIALIZATIONS = [
    "General Physician", "Cardiology", "Neurology", "Orthopedics",
    "Gynaecology & Obstetrics", "Paediatrics", "Oncology", "Dermatology",
    "Ophthalmology", "ENT", "Psychiatry", "Radiology",
    "Surgery – General", "Anaesthesiology", "Other"
  ].freeze

  STATUSES = %w[pending approved rejected].freeze

  validates :first_name,          presence: true
  validates :last_name,           presence: true
  validates :registration_number, presence: true, uniqueness: { case_sensitive: false }
  validates :specialization,      inclusion: { in: SPECIALIZATIONS }
  validates :qualification,       presence: true
  validate :hospital_or_clinic_name
  validates :phone,               presence: true, format: { with: /\A[\d\s\+\-]{7,15}\z/, message: "is not valid" }
  validates :email,               presence: true, uniqueness: { case_sensitive: false },
                                  format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :area,                presence: true
  validates :status,              inclusion: { in: STATUSES }

  has_one_attached :document   # ActiveStorage — remove if not using ActiveStorage

  def full_name
    "Dr. #{first_name} #{last_name}"
  end

  def pending?  = status == "pending"
  def approved? = status == "approved"
  def rejected? = status == "rejected"
end
