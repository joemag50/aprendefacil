class AddUserDaysPerWeek < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :days_per_week, :integer, default: 7
  end
end
