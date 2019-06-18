class User < ApplicationRecord
    has_many :accounts
    validates :username, :presence => true
    validates :username, :uniqueness => true
	validates :password, :presence => true
    validates :password, :length => {:within => 6..40}
    validates :password, :confirmation => true
    has_secure_password
end
