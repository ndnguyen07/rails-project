class Champion < ApplicationRecord
    has_many :account_champions
    has_many :accounts, through: :account_champions
end
