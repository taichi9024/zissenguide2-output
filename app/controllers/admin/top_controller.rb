class Admin::TopController < Admin::Base

  def index
    if current_admin_member
      render :dashboard
    end
  end
end
