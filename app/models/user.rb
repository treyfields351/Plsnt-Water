class User < ApplicationRecord
    has_many :plants

    has_secure_password

    validates :username, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :password,
            length: { minimum: 3 },
            if: -> { new_record? || !password.nil? }
end
