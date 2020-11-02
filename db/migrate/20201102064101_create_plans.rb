class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.references :user, foreign_key: true
      t.date :start
      t.date :final

      t.timestamps
    end
  end
end
