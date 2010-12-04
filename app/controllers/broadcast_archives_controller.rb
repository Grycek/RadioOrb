class BroadcastArchivesController < ApplicationController
    def index
        @broadcast_archives = Broadcast.find(params[:broadcast_id]).broadcast_archives
    end
    
    def new
        @broadcast = Broadcast.find(params[:broadcast_id])
        @broadcast_archive = @broadcast.broadcast_archives.new
    end
    
    def create
        @broadcast = Broadcast.find(params[:broadcast_id])
        @broadcast_archive = @broadcast.broadcast_archives.create(params[:broadcast_archive])
        if @broadcast_archive.save
            redirect_to broadcast_broadcast_archives_path(@broadcast)
        else
            render :action => :new
        end
    end
end
