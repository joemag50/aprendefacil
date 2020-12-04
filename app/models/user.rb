class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum role: { admin: 0, student: 1 }

  has_many :plans, dependent: :destroy 

  def create_plan
    return active_plan if active_plan && !active_plan.is_plan_completed?

    new_plan = plans.create(start: Time.now)
    new_plan.generate_or_find
    new_plan
  end

  def active_plan
    plans.where("final > ?", Time.now).last
  end

  def actual_level
    return 1 if started_since.nil?
    started_since.to_date.step(Date.today, 7).count
  end
end
