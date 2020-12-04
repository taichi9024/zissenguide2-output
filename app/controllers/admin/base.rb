class Admin::Base < ApplicationController

    def current_admin_member
        if session[:admin_id]
            @current_admin_member = AdminMember.find_by(id: session[:admin_id])
        end
    end

helper_method :current_admin_member
end


