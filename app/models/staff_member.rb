class StaffMember < ApplicationRecord
    has_many :events, class_name: "StaffEvent"

    def password=(raw_pass)
        if raw_pass.kind_of?(String)
            self.hash_password = BCrypt::Password.create(raw_pass)
        else
            password = nil
        end
    end

    def active?
        !suspend? && start_date < Time.current
    end
end
