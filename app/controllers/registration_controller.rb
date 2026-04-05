class RegistrationsController < ApplicationController
  def new
    @registration = Registration.new
  end

  def create
    @registration = Registration.new(registration_params)

    if @registration.save
      redirect_to dashboard_index_path,
                  notice: "🎉 Application submitted! We'll contact you within 48 hours."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def registration_params
    params.require(:registration).permit(
      :first_name, :last_name, :registration_number,
      :specialization, :qualification, :hospital_name,
      :phone, :email, :area, :document
    )
  end
end
