class UsersController < ApplicationController

  def new
    render 'new.html.erb'
  end

  def create
    user = User.new(
      email: params[:email],
      name: params[:name],
      # password: params[:password],
      # password_confirmation: params[:password_confirmation],
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

end
