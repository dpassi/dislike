class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    p user.password
         if user and (params[:password] == user.password)
          session[:user_id] = user.id
          redirect_to '/main'
        end
  end

  def destroy
  end
end
