class User < ApplicationRecord
    has_many :user_accounts
    has_many :accounts, through: :user_accounts
    has_many :builds
    validates :username, :presence => true
    validates :username, :uniqueness => true
	validates :password, :presence => true
    validates :password, :length => {:within => 6..40}
    validates :password, :confirmation => true
    has_secure_password
end
