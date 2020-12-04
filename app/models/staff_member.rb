class StaffMember < ApplicationRecord
    has_secure_password

    def password=(raw_pass)
        if raw_pass.kind_of?(String)
            self.hash_password = BCrypt::Password.create(raw_pass)
        else
            password = nil
        end
    end
end
