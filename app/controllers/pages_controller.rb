class PagesController < ApplicationController
  def home
  end

  def dashboard
    @users = User.all
    @feedbacks = current_user.feedbacks
  end
  def admin_edit
    @users = User.all.filter {|ele| ele.admin == false}
    @admins = User.all.filter {|ele| ele.admin == true && ele.super_admin == false }
  end

  def update_user
    user = User.find_by(id: params[:id])
    if user.admin?
      user.update(admin: false)
      redirect_to dashboard_edit_users_path
    else
      user.update(admin: true)
      redirect_to dashboard_edit_users_path
    end

  end


  def notifications
  end

  def payments 
  end
end
