class AddGoalWeightToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :goal_weight, :integer
  end
end
