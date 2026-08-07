class Registration < ApplicationRecord
  after_commit :reindex_for_search, on: [ :create, :update ]

  SPECIALIZATIONS = [
    "General Physician", "Cardiology", "Neuro-suregeon", "Neuro-physician", "Orthopedics",
    "Gynaecology & Obstetrics", "Paediatrics", "Oncology", "Dermatology",
    "Ophthalmology", "ENT", "Psychiatry", "Radiology", "Gastro-enterologist",
    "Surgery – General", "Anaesthesiology", "Dentist", "Cosmetics and aesthetics",
    "Unani Physician", "Ayurved Physician", "Physiotherapist", "Other"
  ].freeze

  STATUSES = %w[pending approved rejected].freeze

  validates :first_name,          presence: true
  validates :last_name,           presence: true
  validates :registration_number, presence: true, uniqueness: { case_sensitive: false }
  validates :specialization,      inclusion: { in: SPECIALIZATIONS }, allow_blank: true
  validates :qualification,       presence: true
  validates :hospital_or_clinic_name, presence: true
  validates :phone,               presence: true, format: { with: /\A[\d\s\+\-]{7,15}\z/, message: "is not valid" }
  validates :email,               presence: true, uniqueness: { case_sensitive: false },
                                  format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :area,                presence: true
  validates :status,              inclusion: { in: STATUSES }

  has_one_attached :document

  def full_name
    "Dr. #{first_name} #{last_name}"
  end

  def pending?  = status == "pending"
  def approved? = status == "approved"
  def rejected? = status == "rejected"

  private

  def reindex_for_search
    KnowledgeIndexJob.perform_later(self.class.name, id)
  end
end
