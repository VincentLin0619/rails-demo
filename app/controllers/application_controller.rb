class ApplicationController < ActionController::Base
  # before_action :configure_permitted_parameter, if: :devise_controller?

  protected

  def authenticate_admin
    unless current_user.admin?
      flash[:alert] = "不允許"
      redirect_to root_path
    end
  end
end
