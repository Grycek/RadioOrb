class BroadcastsController < ApplicationController
  def index
    @broadcasts = Broadcast.all
  end

  def show
    @broadcast  = Broadcast.find(params[:id])
    @presenters = @broadcast.users
  end

end
