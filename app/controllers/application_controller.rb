class ApplicationController < ActionController::Base
  # before_action :configure_permitted_parameter, if: :devise_controller?

  protected

  def admin?
    self.role == "admin"
  end

  def authenticate_admin
    unless current_user.admin?
      flash[:alert] = "你不是管理員，不允許此操作"
      redirect_to root_path
    end
  end
end
