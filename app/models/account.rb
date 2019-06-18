class Account < ApplicationRecord
    belongs_to :user
    has_many :account_champions
    has_many :champions, through: :account_champions
end
