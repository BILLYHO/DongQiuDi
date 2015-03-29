module SessionsHelper
  # Logs in the given user.
  def log_in(user)
    session[:user_id] = user.id
    session[:admin] = user.admin
  end

  # Returns the current logged-in user (if any).
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end

  def is_admin?
    session[:admin]
  end

  # Logs out the current user.
  def log_out
    session.delete(:user_id)
    session.delete(:admin)
    @current_user = nil
  end

  def logged_in_admin
    unless is_admin?
      flash[:danger] = "Not admin."
      redirect_to root_url
    end
  end


  # Confirms a logged-in user.
  def logged_in_user
    unless logged_in?
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end
end
