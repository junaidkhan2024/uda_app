class SetupController < ApplicationController
  def create_admin
    # Safety check - only run if no admin exists
    if Admin.count > 0
      render plain: "Admin already exists: #{Admin.first.email}" and return
    end

    a = Admin.create!(
      email: ENV["ADMIN_EMAIL"],
      password: ENV["ADMIN_PASSWORD"],
      password_confirmation: ENV["ADMIN_PASSWORD"]
    )
    render plain: "✅ Admin created: #{a.email}"
  end
end
