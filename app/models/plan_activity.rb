class PlanActivity < ApplicationRecord
  belongs_to :plan
  belongs_to :activity

  enum status: { created: 0, viewed: 1, completed: 2 }

  def mark_as_viewed
    update_attribute(:status, 1) if status == 'created'
  end

  def mark_as_completed
    update_attribute(:status, 2) if status == 'viewed'
  end
end
