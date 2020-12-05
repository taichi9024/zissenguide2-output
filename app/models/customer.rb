class Customer < ApplicationRecord
    has_one :home_address
    has_one :work_address

    def password=(raw_pass)
        if raw_pass
            self.hash_password = BCrypt::Password.create(raw_pass)
        else
            self.hash_password = nil
        end
    end
end
