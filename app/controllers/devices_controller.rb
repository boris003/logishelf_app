class DevicesController < ApplicationController

  def index
    @devices = Device.all
    render "index.html.erb"
  end

  def show
    @device = Device.find(params[:id])
  end

  def new
      render "new.html.erb"
  end

  def create
    @new_device = Device.create(
      manufacturer: params[:manufacturer],
      model: params[:model],
      os_version: params[:os_version],
      screen: params[:screen].to_i,
      active: params[:active],
      phone_number: params[:phone_number],
      ios: params[:ios],
      location: current_user.location,
      image: params[:image],
      available: true,
      user_id: 0
      )
    flash[:success] = "New device added!"
    redirect_to "/"
  end

  def edit
    
  end

  def update
    
  end


end
