class DeleteDateOfBirthFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column  :users, :date_of_birth, :integer
  end
end
