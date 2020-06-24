class ConnectionsController < ApplicationController
  def new
  end

  def show
    @connections = Connection.where(user_id: current_user)
  end

  def remove
  end
end
