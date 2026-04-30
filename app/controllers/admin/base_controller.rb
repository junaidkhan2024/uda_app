# app/controllers/admin/base_controller.rb
class Admin::BaseController < ApplicationController
  before_action :require_admin

  private

  def require_admin
    unless session[:admin_id]
      redirect_to admin_login_path, alert: "Please log in to access the admin panel."
    end
  end

  def current_admin
    @current_admin ||= Admin.find_by(id: session[:admin_id])
  end
  helper_method :current_admin
end
