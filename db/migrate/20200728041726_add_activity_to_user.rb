class AddActivityToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :activity, :integer
  end
end
