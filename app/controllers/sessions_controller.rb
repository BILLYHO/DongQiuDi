class SessionsController < ApplicationController


  def new
  end

  def weibo
    u = URI.parse(request.original_url)
    p = CGI.parse(u.query)
    flash[:notice] = p['code'].first
    session[:code] = p['code'].first
    redirect_to "https://api.weibo.com/oauth2/access_token?client_id=3741023176&client_secret=1d9a681ae216b72f2baa31a03390777c&grant_type=authorization_code&redirect_uri=http://dongqiudi.herokuapp.com/oauth&code=#{p['code'].first}"
  end

  def oauth
    flash[:notice] = request.original_url
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
