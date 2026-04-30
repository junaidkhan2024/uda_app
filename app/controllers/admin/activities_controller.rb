# app/controllers/admin/activities_controller.rb
class Admin::ActivitiesController < Admin::BaseController
  before_action :set_activity, only: [ :edit, :update, :destroy ]

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)
    if @activity.save
      redirect_to admin_dashboard_path, notice: "Activity '#{@activity.title}' created successfully."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @activity = Activity.find(params[:id])
  end

  def update
    if @activity.update(activity_params)
      redirect_to admin_dashboard_path, notice: "Activity updated successfully."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @activity.destroy
    redirect_to admin_dashboard_path, notice: "Activity deleted."
  end

  private

  def set_activity
    @activity = Activity.find(params[:id])
  end

  def activity_params
    params.require(:activity).permit(:title, :description, :datetime, :location, :status, :emoji)
  end
end
