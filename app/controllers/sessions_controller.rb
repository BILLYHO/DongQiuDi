class SessionsController < ApplicationController


  def new
  end

  def weibo
    u = URI.parse(request.original_url)
    p = CGI.parse(u.query)
    flash[:notice] = p['code'].first
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to root_url
      flash[:success] = 'Login success!'
    else
      flash[:danger] = 'Invalid email/password combination' # Not quite right!
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end

end
