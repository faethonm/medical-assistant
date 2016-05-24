class HomeController < ApplicationController
  before_action :authenticate_user!, only: [:contact]
  def index
    user_signed_in? && @appointments = current_user.appointments
  end

  def contact
  end
end
