class AccountChampion < ApplicationRecord
    belongs_to :account
    belongs_to :champion
end
