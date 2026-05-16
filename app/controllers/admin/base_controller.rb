class Admin::BaseController < ApplicationController
  layout "admin"
  before_action :set_current_admin
  before_action :require_admin

  private

  def set_current_admin
    @current_admin = Admin.find_by(id: session[:admin_id])
  end

  def require_admin
    unless session[:admin_id] && @current_admin
      session.delete(:admin_id)
      redirect_to admin_login_path, alert: "Please log in to access the admin panel."
    end
  end

  def current_admin
    @current_admin
  end
  helper_method :current_admin
end
