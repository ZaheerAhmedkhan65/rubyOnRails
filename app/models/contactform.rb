class Contactform < ApplicationRecord
    validates :user_name, :user_message, presence: true
    validates :user_email , presence: true, uniqueness: true
end
