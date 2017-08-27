class ApplicationController < ActionController::Base


  helper_method :current_user

  def current_user
    puts session[:userToken]
    @current_user = User.find_by(token: session[:userToken]) if session[:userToken]
    return @current_user
  end


  def require_user
    redirect_to root_path unless current_user
  end

  def require_admin
    puts current_user.token
    if current_user != nil
      redirect_to root_path unless current_user.level = 4
    else
      redirect_to root_path
    end
  end





end
