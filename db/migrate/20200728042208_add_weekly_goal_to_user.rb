class AddWeeklyGoalToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :weekly_goal, :integer
  end
end
