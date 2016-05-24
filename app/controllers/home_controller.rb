class HomeController < ApplicationController
  before_action :authenticate_user!, only: [:contact]
  def index
    @appointments = current_user.appointments
  end

  def contact
  end
end
