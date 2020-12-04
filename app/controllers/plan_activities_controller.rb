class PlanActivitiesController < ApplicationController
  before_action :set_plan_activity, only: [:show, :complete_activity]

  def show
    @plan_activity.mark_as_viewed
    @activity = @plan_activity.activity
  end

  def complete_activity
    @plan_activity.mark_as_completed
    redirect_to plans_url
  end

  private

  def set_plan_activity
    @plan_activity = PlanActivity.find(params[:id])
  end
end