class Dashboard::Admin::UsersController < Dashboard::DashboardController
  def index
    @users = @paginate = User.all.paginate(page: params[:page], per_page: 10).order("id DESC")
  end
end
