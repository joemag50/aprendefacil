class CreatePlanActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :plan_activities do |t|
      t.references :plan, foreign_key: true
      t.references :activity, foreign_key: true
      t.integer :day
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
