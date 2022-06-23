class ApplicationController < ActionController::Base
  protected

  def authenticate_admin
    unless current_user.admin?
      flash[:alert] = "不允許"
      redirect_to root_path
    end
  end
end
