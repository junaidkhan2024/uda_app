# app/controllers/admin/registrations_controller.rb
class Admin::RegistrationsController < Admin::BaseController
  def approve
    @registration = Registration.find(params[:id])
    @registration.update!(status: "approved")
    redirect_to admin_dashboard_path, notice: "Dr. #{@registration.first_name} #{@registration.last_name} has been approved."
  end

  def reject
    @registration = Registration.find(params[:id])
    @registration.update!(status: "rejected")
    redirect_to admin_dashboard_path, notice: "Registration for Dr. #{@registration.first_name} #{@registration.last_name} has been rejected."
  end
end
