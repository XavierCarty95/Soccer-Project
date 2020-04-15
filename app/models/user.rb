class User < ApplicationRecord

    has_secure_password

    validates :username , uniqueness: true
    validates :username , presence: true
    validates :password , presence: true
    validates :username, length: { maximum: 20, message: "can't be more than 20 characters" }
end
