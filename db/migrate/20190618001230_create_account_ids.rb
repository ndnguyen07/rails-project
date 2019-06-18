class CreateAccountIds < ActiveRecord::Migration[5.2]
  def change
    create_table :account_ids do |t|
      t.string :champion_id

      t.timestamps
    end
  end
end
