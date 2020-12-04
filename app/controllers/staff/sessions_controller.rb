class Staff::SessionsController < Staff::Base
  skip_before_action :time_logout
  def new
    @form = Staff::LoginForm.new
  end

  def create
    @form = Staff::LoginForm.new(staff_params)
    if @form.email.present?
      staff_member = StaffMember.find_by("email = ?", @form.email)  
      Staff::Authenticator.new(staff_member).authenticate(@form.password)
      session[:staff_id] = staff_member.id
      session[:time_id]  = Time.current
      logger.debug "#{staff_member.id}"
      if staff_member.events.create!(type: "ログイン")
        logger.debug "doneeeeee"
      else
        logger.debug "yeeeeeeeet"
      end
      logger.debug "#{StaffMember.first.created_at}"
      flash.notice = "ログインしました"
      redirect_to :staff_root
    else
      render :new
    end
  end

  def destroy
    current_staff_member.events.create(type:"ログアウト")
    session.delete([:staff_id])
    flash.notice = "ログアウトしました"
    redirect_to :staff_login
  end

  private 
  def staff_params
    params.require(:staff_login_form).permit(:email, :password)
  end
end
