class DashboardController < ApplicationController
  def dashboard_home
    @users = User.first
  end

  def show
    if current_user.Admin?
      render '/'
    end
  end
end
