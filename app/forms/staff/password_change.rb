class Staff::PasswordChange
    include ActiveModel::Model
    attr_accessor :object, :current_password, :new_password, :confirm_password

    def save
        object.password = new_password
        object.save
    end
end