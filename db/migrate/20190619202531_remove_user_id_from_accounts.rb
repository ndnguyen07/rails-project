class RemoveUserIdFromAccounts < ActiveRecord::Migration[5.2]
  def change
    remove_column :accounts, :user_id, :integer
  end
end
