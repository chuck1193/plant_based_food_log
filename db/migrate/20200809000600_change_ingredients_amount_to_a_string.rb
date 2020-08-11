class ChangeIngredientsAmountToAString < ActiveRecord::Migration[5.2]
  def change
    change_column :recipes, :ingredient_amount, :string
  end
end
