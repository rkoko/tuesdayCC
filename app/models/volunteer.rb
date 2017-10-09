class Volunteer < ApplicationRecord
    validates :email_address, uniqueness: true
end
