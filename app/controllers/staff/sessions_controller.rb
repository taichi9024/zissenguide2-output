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
      session[:id] = staff_member.id
      session[:time_id]  = Time.current
      staff_member.events.create!(type: "ログイン")
      flash.notice = "ログインしました"
      redirect_to :staff_root
    else
      render :new
    end
  end

  def destroy
    @current_staff_member.events.create(type:"ログアウト")
    session.delete([:id])
    flash.notice = "ログアウトしました"
    redirect_to :staff_login
  end

  private 
  def staff_params
    params.require(:staff_login_form).permit(:email, :password)
  end
end
