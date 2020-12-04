class Admin::SessionsController < ApplicationController
  def new
    @form = Admin::LoginForm.new
  end

  def create
    @form = Admin::LoginForm.new(admin_params)
    if @form.email.present?
      admin_member = AdminMember.find_by("email = ?", @form.email)
      Admin::Authenticator.new(admin_member).authenticate(@form.password)
      session[:admin_id] = admin_member.id
      redirect_to :admin_root
      
    end 
  end

  def destroy
    session.delete(:admin_id)
    flash.notice = "ログアウトしました"
    redirect_to :admin_root
  end

  private
  def admin_params
    params.require(:admin_login_form).permit(:email, :password)
  end

end
