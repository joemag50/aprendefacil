class PlanActivity < ApplicationRecord
  belongs_to :plan
  belongs_to :activity

  enum status: { created: 0, viewed: 1, completed: 2 }
end
