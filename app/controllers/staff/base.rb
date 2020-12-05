class Staff::Base < ApplicationController
    before_action :forced_logout
    before_action :time_logout

    def current_staff_member
        if session[:id]
            @current_staff_member ||= StaffMember.find_by(id: session[:id])
        end
    end

    def forced_logout
        if current_staff_member && !current_staff_member.active?
            flash.notice = "強制でログアウトです"
            session.delete(:id)
        end
    end

    TIMELIMIT = 10.minutes
    def time_logout
        if session[:time_id] > TIMELIMIT.ago
            session[:time_id] = Time.current
        else
            session.delete(:id)
            session.delete(:time_id)
            flash.notice = "セッション時間超過"
            redirect_to :staff_login
        end
    end

helper_method :current_staff_member
end

            