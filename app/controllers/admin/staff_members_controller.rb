class Admin::StaffMembersController < ApplicationController

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
    
end
