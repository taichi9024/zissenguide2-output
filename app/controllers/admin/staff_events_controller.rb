class Admin::StaffEventsController < ApplicationController
  def index
      @staff_events = StaffEvent.all
  end

  def detail
    @staff_event = StaffEvent.find_by(id: params[:staff_member_id])
  end
end
