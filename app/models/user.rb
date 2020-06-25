class User < ApplicationRecord
    has_many :posts
    has_many :comments

    validates :username, uniqueness: true, length: { within: 4..12 }, presence: true
    validates :email, uniqueness: true, presence: true
    validates :password, length: { within: 4..12 }, presence: true
end
