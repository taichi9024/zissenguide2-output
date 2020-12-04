class Staff::Authenticator
    def initialize(staff_member)
        @staff_member = staff_member
    end

    def authenticate(password)
        @staff_member.hash_password
        !@staff_member.suspend?
        BCrypt::Password.create(@staff_member.hash_password) == password
    end
end