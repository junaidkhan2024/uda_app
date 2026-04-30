# app/models/activity.rb
class Activity < ApplicationRecord
  validates :title, presence: true
  validates :datetime, presence: true
  validates :location, presence: true
  validates :status, inclusion: { in: %w[upcoming past] }

  scope :upcoming, -> { where(status: "upcoming").order(datetime: :asc) }
  scope :past,     -> { where(status: "past").order(datetime: :desc) }
end
