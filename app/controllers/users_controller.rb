class UsersController < ApplicationController

  def new
    render 'new.html.erb'
  end

  def create
    user = User.new(
      email: params[:email],
      name: params[:name],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      admin: false,
      location: params[:location]
    )
    if user.save
      session[:user_id] = user.id
      flash[:success] = 'Successfully created account!'
      redirect_to '/'
    else
      flash[:warning] = 'Invalid email or password!'
      redirect_to '/signup'
    end
  end
  
  def edit
    @current_user = User.find_by(id: session[:user_id])
    @user = User.find(params[:id])
    if @current_user == nil
      redirect_to "/"
    elsif @current_user.id == @user.id
      render "edit.html.erb"
    else
      redirect_to "/"
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update(
      email: params[:email],
      name: params[:name],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      admin: false,
      location: params[:location]
      )
    flash[:info] = "Information is updated!"
    redirect_to "/"
    # redirect_to "/users/#{@user.id}"
  end

end
