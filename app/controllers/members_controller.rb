# app/controllers/members_controller.rb

class MembersController < ApplicationController
  def index
    @registrations = Registration.all.order(created_at: :desc)

    # Search by name, hospital, area
    if params[:search].present?
      query = "%#{params[:search].downcase}%"
      @registrations = @registrations.where(
        "LOWER(first_name) LIKE ? OR LOWER(last_name) LIKE ? OR
         LOWER(hospital_or_clinic_name) LIKE ? OR LOWER(area) LIKE ? OR
         LOWER(registration_number) LIKE ?",
        query, query, query, query, query
      )
    end

    # Filter by specialization
    if params[:specialization].present?
      @registrations = @registrations.where(specialization: params[:specialization])
    end

    # Filter by area
    if params[:area].present?
      @registrations = @registrations.where(area: params[:area])
    end

    # Stats
    all = Registration.all
    @total_count         = all.count
    @approved_count      = all.where(status: "approved").count
    @specialization_count = all.distinct.count(:specialization)

    # Dropdown options
    @areas = Registration.distinct.pluck(:area).compact.sort
  end
end
