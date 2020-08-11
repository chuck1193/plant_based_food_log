class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :ingredients
      t.integer :ingredient_amount
      t.text :instructions

      t.timestamps
    end
  end
end
