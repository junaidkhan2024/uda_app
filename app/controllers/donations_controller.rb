class DonationsController < ApplicationController
  def index
    @donations = Donation.all
  end

  def new
    @donation = Donation.new
  end

  def create
    @donation = Donation.new(donation_params)

    if @donation.save
      redirect_to @donation, notice: "Thank you for your donation."
    else
      render :new, status: unprocessable_entity
    end
  end

  def show
    @dobnation = Donation.find(params[:id])
  end

  private

  def donation_params
    params.require(:donation).permit(:first_name, :last_name, :email, :mobile_number, :amount, :address)
  end
end
