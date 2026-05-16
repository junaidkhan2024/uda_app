# app/controllers/admin/registrations_controller.rb
class Admin::RegistrationsController < Admin::BaseController
  before_action :set_registration

  def approve
    @registration.update!(status: "approved")
    redirect_to admin_dashboard_path, notice: "Dr. #{@registration.first_name} #{@registration.last_name} has been approved."
  end

  def reject
    @registration.update!(status: "rejected")
    redirect_to admin_dashboard_path, notice: "Registration for Dr. #{@registration.first_name} #{@registration.last_name} has been rejected."
  end

  def edit;end

  def update
    if @registration.update(registration_params)
      redirect_to admin_dashboard_path, notice: "Dr.#{@registration.first_name} #{@registration.last_name}'s details updated successfully."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_registration
    @registration = Registration.find(params[:id])
  end

  def registration_params
    params.require(:registration).permit(
      :first_name, :last_name, :registration_number,
      :specialization, :qualification, :hospital_or_clinic_name,
      :phone, :email, :area, :status
    )
  end
end
