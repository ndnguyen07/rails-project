class Account < ApplicationRecord
    has_many :user_accounts
    has_many :users, through: :user_accounts
    has_many :account_champions
    has_many :champions, through: :account_champions


    def self.highest_summoner_level
        return Account.maximum('summoner_level')
    end

    def self.lowest_summoner_level
        return Account.minimum('summoner_level')
    end


    def self.longest_name
        return Account.maximum('name')
    end

    def self.shortest_name
        return Account.minimum('name')
    end
end
