class CreateFoodLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :food_logs do |t|
      t.integer :food_type
      t.string :food
      t.integer :calories
      t.integer :quantity
      t.integer :workout
      t.integer :water_intake

      t.timestamps
    end
  end
end
