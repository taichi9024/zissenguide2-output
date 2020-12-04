class Admin::Authenticator
    def initialize(admin_member)
        @admin_member = admin_member
    end
    def authenticate(password)
        @admin_member.hash_password
        BCrypt::Password.create(@admin_member.hash_password) == password
    end
end
