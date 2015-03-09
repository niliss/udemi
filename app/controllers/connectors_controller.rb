class ConnectorsController < ApplicationController

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

 def index
 	# need to put the right folder also, use quotes
 	@connectors = Connector.all
 end

 def show
 	@connector = Connector.find(params[:id])
 end
 
 def create
    @connector =  Connector.create(connector_params)
    if @connector.save
      redirect_to root_path
    else
      render :action => 'new'
    end
  end

  def new
  	 @connector = Connector.new

  end

 def edit
    @connector = Connector.find params[:id]
  end

def update
    @connector = Connector.find params[:id]
    if @connector.update_attributes(connector_params)
      redirect_to connector_path
    else
      render :action => :edit
    end
  end

private
    # Using a private method to encapsulate the permissible parameters is
    # just a good pattern since you'll be able to reuse the same permit
    # list between create and update. Also, you can specialize this method
    # with per-user checking of permissible attributes.
    def connector_params
      params.require(:connector).permit(:name, :user_id, :course_id)
      
    end



end

