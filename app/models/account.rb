class Account < ApplicationRecord
    has_many :user_accounts
    has_many :users, through: :user_accounts
    has_many :account_champions
    has_many :champions, through: :account_champions
end
