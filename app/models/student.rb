class Student < ApplicationRecord
    validates :first_name, :last_name, presence: true
    validates :personal_email, :repository_link, :page_link, :phone_number, presence: true, uniqueness: true

    def name
        "#{first_name} #{last_name}".strip
    end
end
