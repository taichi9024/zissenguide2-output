class Staff::SessionsController < ApplicationController
  def new
    @form = Staff::LoginForm.new
  end

  def create
    @form = Staff::LoginForm.new(staff_params)
    if @form.email.present?
      staff_member = StaffMember.find_by("email = ?", @form.email)  
      Staff::Authenticator.new(staff_member).authenticate(@form.password)
      session[:staff_id] = staff_member.id
      logger.debug "iiiiiiiiiii#{session[:staff_id]}"
      flash.notice = "ログインしました"
      redirect_to :staff_root
    else
      render :new
    end
  end

  def destroy
    session.delete([:staff_id])
    flash.notice = "ログアウトしました"
    redirect_to :staff_login
  end

  private 
  def staff_params
    params.require(:staff_login_form).permit(:email, :password)
  end
end
