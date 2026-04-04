class DashboardController < ApplicationController
  def index
    @registrations = Registration.order(created_at: :desc)
  end
end
