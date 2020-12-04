class Staff::Base < ApplicationController
    def current_staff_member
        if session[:staff_id]
            @current_staff_member ||= StaffMember.find_by(id: session[:staff_id])
        end
    end
helper_method :current_staff_member
end

            