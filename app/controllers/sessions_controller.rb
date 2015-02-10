class SessionsController < ApplicationController


  def new
  end

  def weibo
    u = URI.parse(request.original_url)
    p = CGI.parse(u.query)
    flash[:notice] = p['code'].first
    session[:code] = p['code'].first

    #require 'rest_client'
    require 'net/http'
    require "uri"
    # get the url that we need to post to
    url = URI.parse("https://api.weibo.com/oauth2/access_token")
    # build the params string
    post_args = {}
    post_args['client_id'] = '3741023176'
    post_args['client_secret'] = '1d9a681ae216b72f2baa31a03390777c'
    post_args['grant_type'] = 'authorization_code'
    post_args['redirect_uri'] = 'http://dongqiudi.herokuapp.com/oauth'
    post_args['code'] = p['code'].first

    # send the request
    resp = Net::HTTP.post_form(url, post_args)
    puts resp.body
    flash[:success] = resp.body.to_s
    #redirect_to "https://api.weibo.com/oauth2/access_token?client_id=3741023176&client_secret=1d9a681ae216b72f2baa31a03390777c&grant_type=authorization_code&redirect_uri=http://dongqiudi.herokuapp.com/oauth&code=#{p['code'].first}"
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
