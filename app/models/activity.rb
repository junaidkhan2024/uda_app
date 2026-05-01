# app/models/activity.rb
class Activity < ApplicationRecord
  validates :title, presence: true
  validates :datetime, presence: true
  validates :location, presence: true
  validates :status, inclusion: { in: %w[upcoming past] }

  scope :upcoming, -> { where("datetime >= ?", Time.current).order(datetime: :asc) }
  scope :past,     -> { where("datetime < ?", Time.current).order(datetime: :desc) }
end
