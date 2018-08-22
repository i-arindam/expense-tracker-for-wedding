class DashboardController < ApplicationController

  def overview
    @overview = current_user.overview
  end
end
