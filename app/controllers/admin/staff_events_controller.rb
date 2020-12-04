class Admin::StaffEventsController < ApplicationController
  def index
      @staff_events = StaffEvent.all
  end

  def detail
    @staff_member = StaffMember.find_by(id: params[:staff_member_id])
    @staff_events = @staff_member.events.all
  end
end
