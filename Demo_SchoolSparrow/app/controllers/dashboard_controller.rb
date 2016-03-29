class DashboardController < ApplicationController
  def dashboard_home
    @users = User.first
  end
end
