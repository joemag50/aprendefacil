class PlansController < ApplicationController
  def index
    @plans = current_user.plans
  end

  def create_plan
    @plan = current_user.create_plan
  end
end