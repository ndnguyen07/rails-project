class AddSummonerLevelToAccounts < ActiveRecord::Migration[5.2]
  def change
    add_column :accounts, :summoner_level, :integer
  end
end
