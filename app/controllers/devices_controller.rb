class DevicesController < ApplicationController

  def index
    @devices = Device.all
    render "index.html.erb"
  end

  def show
    @device = Device.find(params[:id])
  end
end
