class MembersController < ApplicationController
  def index
    @registrations = Registration.where(status: "approved").order(created_at: :desc)

    # Search by name, hospital, area — scoped to approved records only
    if params[:search].present?
      query = "%#{params[:search].downcase}%"
      @registrations = @registrations.where(
        "LOWER(first_name) LIKE ? OR LOWER(last_name) LIKE ? OR
         LOWER(hospital_or_clinic_name) LIKE ? OR LOWER(area) LIKE ? OR
         LOWER(registration_number) LIKE ?",
        query, query, query, query, query
      )
    end

    # Filter by specialization — scoped to approved records only
    if params[:specialization].present?
      @registrations = @registrations.where(specialization: params[:specialization])
    end

    # Filter by area — scoped to approved records only
    if params[:area].present?
      @registrations = @registrations.where(area: params[:area])
    end

    # Stats — each counts its own scope
    @total_count          = Registration.count
    @approved_count       = Registration.where(status: "approved").count
    @specialization_count = Registration.where(status: "approved").distinct.count(:specialization)

    # Dropdown options — approved records only so pending areas don't surface
    @areas = Registration.where(status: "approved").distinct.pluck(:area).compact.sort
  end
end
