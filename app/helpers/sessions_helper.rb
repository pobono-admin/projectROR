module SessionsHelper
	  # Logs in the given user.
  def log_in(user)
    session[:user_id] = user.id
  end
  # def current_user
  #   @current_user ||= User.find_by(id: session[:user_id])
  # end

  # Redirects to stored location (or to the default).
  def redirect_back_or(default)
    redirect_to(session[:forwarding_url] || default)
    session.delete(:forwarding_url)
  end

  # Stores the URL trying to be accessed.
  def store_location
    session[:forwarding_url] = request.url if request.get?
  end


  def current_user
    if (user_id = session[:user_id])
      @current_user ||= User.find_by(id: user_id)
    elsif (user_id = cookies.signed[:user_id])
      user = User.find_by(id: user_id)
      if user && user.authenticated?(:remember, cookies[:remember_token])
        log_in user
        @current_user = user
      end
    end
  end


  def current_user?(user)
    user == current_user
  end
  

    # Returns true if the user is logged in, false otherwise.
  def logged_in?
    !current_user.nil?
  end

    # Logs out the current user.
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
  

 # Redirects to stored location (or to the default).
  def redirect_back_or(default)
    redirect_to(session[:forwarding_url] || default)
    session.delete(:forwarding_url)
  end

  # Stores the URL trying to be accessed.
  def store_location
    session[:forwarding_url] = request.url if request.get?
  end


  
end
