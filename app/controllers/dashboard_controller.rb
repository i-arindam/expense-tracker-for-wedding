class DashboardController < ApplicationController

  def overview
    @overview = current_user.overview
    @user = current_user
    @wedding = @user.wedding
  end
end
