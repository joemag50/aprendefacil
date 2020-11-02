class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.string :title
      t.string :description
      t.text :content
      t.text :exercise
      t.float :duration, default: 1.0
      t.integer :skill_level, default: 1

      t.timestamps
    end
  end
end
