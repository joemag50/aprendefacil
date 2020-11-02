class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum role: { admin: 0, student: 1 }

  has_many :plans, dependent: :destroy 

  def create_plan
    return active_plan if active_plan

    new_plan = plans.create(start: Time.now)
    new_plan.generate_or_find
    new_plan
  end

  def active_plan
    plans.where("final > ?", Time.now).last
  end
end
