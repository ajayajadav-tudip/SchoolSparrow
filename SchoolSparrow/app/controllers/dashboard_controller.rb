class DashboardController < ApplicationController
  def dashboard_home
    @users = User.first
  end

  def show
  end

  def dashboard_admin

  end
end
