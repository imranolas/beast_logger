class SessionsController < ApplicationController
  
  def index
    @sessions = current_user.sessions.order(:created_at)
  end

  def create
    @session= Session.create(user_id: current_user.id)
    redirect_to @session
  end

  def show
    @session = Session.find(params[:id])
    @climb = Climb.new
  end

end
