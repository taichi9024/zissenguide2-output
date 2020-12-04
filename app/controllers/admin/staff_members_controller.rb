class Admin::StaffMembersController < Admin::Base
    before_action :login_first
    def index
        @staff_members = StaffMember.all
    end

    def show
        @staff_member = StaffMember.find_by(id: params[:id])
    end

    def new
        @staff_member = StaffMember.new
    end

    def create
        @staff_member = StaffMember.new
    end

    def login_first
        unless current_admin_member
            flash.notice = "管理者としてログインして下さい"
            redirect_to :admin_root
        end
    end
    
end
