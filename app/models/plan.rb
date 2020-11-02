class Plan < ApplicationRecord
  belongs_to :user
  has_many :plan_activities, dependent: :destroy
  has_many :activities, through: :plan_activities

  def generate_or_find(days = 7, activities_per_day = 1)
    plan_activities and return unless plan_activities.empty?
    activity_count = Activity.count

    (1..days).each do |day|
      (1..activities_per_day).each do |activity_per_day|
        offset = rand(activity_count)
        self.plan_activities.create(activity_id: Activity.offset(offset).first.id, day: day)
      end
    end
    self.update_attribute(:final, Time.now + days.days)
    plan_activities
  end
end
