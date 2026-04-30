# app/controllers/admin/sessions_controller.rb
class Admin::SessionsController < ApplicationController
  def new
    redirect_to admin_dashboard_path if session[:admin_id]
  end

  def create
    admin = Admin.find_by(email: params[:email].to_s.downcase.strip)
    if admin&.authenticate(params[:password])
      session[:admin_id] = admin.id
      redirect_to admin_dashboard_path, notice: "Welcome back, #{admin.email}!"
    else
      flash.now[:alert] = "Invalid email or password."
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    session.delete(:admin_id)
    redirect_to admin_login_path, notice: "Logged out successfully."
  end
end
