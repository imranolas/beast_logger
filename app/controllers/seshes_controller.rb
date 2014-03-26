class SeshesController < ApplicationController

  def index
    @sessions = current_user.seshes.order(:created_at)
  end

  def create
    @session= Sesh.create(user_id: current_user.id)
    redirect_to @session
  end

  def show
    @session = Sesh.find(params[:id])
    @climb = Climb.new
  end

end
