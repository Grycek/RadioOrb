class Admin::BroadcastsController < Admin::AdminController
  def index
    @broadcasts = Broadcast.all
  end
  
  def edit
    @broadcast  = Broadcast.find(params[:id])
    @presenters_links = @broadcast.presenters
    @users      = User.all
  end

  
  def update
    @broadcast = Broadcast.find(params[:id])
    @presenters_links = @broadcast.presenters
    if @broadcast.update_attributes(params[:broadcast])
      redirect_to root_path
    else
      @presenters_links = @broadcast.presenters
      @users      = User.all
      render :action => :edit
    end
  end
  
  def new
    @users     = User.all
    @broadcast = Broadcast.new
    @presemter = Presenter.new
  end
  
  def create
    @users     = User.all
    @broadcast = Broadcast.create(params[:broadcast])
    if @broadcast.save and (@presenter = Presenter.create(:user_id => params[:presenter][:user_id], :broadcast_id => @broadcast.id ))
      redirect_to root_path
    else
      @broadcast.delete
      render :action => :new
    end
  end
  
  ###
  def delete_presenter
    @presenter = Presenter.find(params[:presenter_id].to_i)
    @presenter.destroy
    redirect_to admin_broadcasts_path
  end
  
  def add_presenter
    @presenter = Presenter.create(:user_id => params[:presenter][:user_id], :broadcast_id => params[:id])
    if @presenter.save
      redirect_to admin_broadcasts_path
    else
      @broadcast  = Broadcast.find(params[:id])
      @presenters_links = @broadcast.presenters
      @users      = User.all
      render :action => :edit
    end
  end
end
