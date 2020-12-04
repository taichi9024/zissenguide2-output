class Staff::PasswordsController < Staff::Base
  def edit
    @password_change = Staff::PasswordChange.new(object: current_staff_member)
  end

  def update
    @password_change = Staff::PasswordChange.new(pass_params)
    @password_change = Staff::PasswordChange.new(object: current_staff_member)
    if @password_change.save
      flash.notice = "パスワードを変更しました"
      redirect_to :staff_root
    end
  end

  def pass_params
    params.require(:staff_password_change).permit(:current_password, :new_password, :confirm_password)
  end
end
