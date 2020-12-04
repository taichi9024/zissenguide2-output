class Staff::AccountsController < Staff::Base
    def edit
        @account = current_staff_member
    end

    def update
    end
end
