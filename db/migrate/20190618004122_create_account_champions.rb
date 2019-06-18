class CreateAccountChampions < ActiveRecord::Migration[5.2]
  def change
    create_table :account_champions do |t|
      t.string :account_id
      t.string :champion_id

      t.timestamps
    end
  end
end
