# app/controllers/admin/dashboard_controller.rb
class Admin::DashboardController < Admin::BaseController
  def index
    @pending_registrations   = Registration.where(status: "pending").order(created_at: :desc)
    @approved_registrations  = Registration.where(status: "approved").order(created_at: :desc)
    @rejected_registrations  = Registration.where(status: "rejected").order(created_at: :desc)
    @upcoming_activities     = Activity.upcoming
    @past_activities         = Activity.past
    @total_members           = Registration.count
    @pending_count           = @pending_registrations.count
    @approved_count          = @approved_registrations.count
  end
end
