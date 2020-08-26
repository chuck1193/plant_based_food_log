class FoodLog < ApplicationRecord
  belongs_to :user

  enum food_type: {breakfast: 1, lunch:2, dinner:3, snacks:4}

  enum workout: {running:1, cycling:2, gym:3, dancing:4, yoga:5, swimming:5, other:6}

  def caloric_intake
    daily_calories += calories
  end

  def calorie_quantity
    caloric_quantity = quantity * calories
 end
end
