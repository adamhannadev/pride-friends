class ConnectionsController < ApplicationController

  before_action :authenticate_user!

  def new
   @connection = Connection.new
  end

  def create
    @connection = Connection.new(params.require(:connection).permit(:names, :insta, :memory))
    @connection.user = current_user
    @connection.connection_date = Time.now
    if @connection.save
      redirect_to connections_path
    else
      flash[:errors] = @connection.errors.full_messages
      redirect_to new_connection_path
    end
  end
  def index
    @connections = Connection.where(user_id: current_user)
  end

  def show
   @connection = Connection.find(params[:id])
  end
  def destroy
    @connection = Connection.find(params[:id])
    @connection.destroy
    redirect_to connections_path
  end

  def remove
  end

end
