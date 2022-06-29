class Dashboard::Admin::UsersController < Dashboard::DashboardController
  def index
    @users = User.all
  end
end
