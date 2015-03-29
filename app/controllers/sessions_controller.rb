class SessionsController < ApplicationController
  require 'net/http'
  require 'net/https'
  require "uri"
  require 'json'

  def new
  end

  def weibo
    #get code from weibo
    u = URI.parse(request.original_url)
    p = CGI.parse(u.query)
    code = p['code'].first

    # get access token with code
    url = URI.parse("https://api.weibo.com/oauth2/access_token")

    post_args = {}
    post_args['client_id'] = '3741023176'
    post_args['client_secret'] = '1d9a681ae216b72f2baa31a03390777c'
    post_args['grant_type'] = 'authorization_code'
    post_args['redirect_uri'] = 'http://dongqiudi.herokuapp.com/weibo'
    post_args['code'] = code

    resp = Net::HTTP.post_form(url, post_args)
    obj = JSON.parse(resp.body)
    token = obj['access_token']
    uid = obj['uid']

    #get user info with access token
    uri = URI.parse("https://api.weibo.com/2/users/show.json?access_token=#{token}&uid=#{uid}")
    response = Net::HTTP.get_response(uri)
    result = JSON.parse(response.body)
    user_name =  result['name']
    user_email = "#{uid}@weibo.com".downcase
    image_small = result['profile_image_url'] #50*50
    image_large = result['avatar_large'] #180*180
    image_hd = result['avatar_hd'] #origin size

    user = User.find_by(email: user_email)
    if !user
      flash[:notice] = 'User created'
      user = User.create(name: user_name, email:user_email, password: token, password_confirmation: token,
                         user_type: "weibo", weibo_token: token, weibo_uid: uid, weibo_avatar_small: image_small,
                         weibo_avatar_large: image_large, weibo_avatar_hd: image_hd)
    else
      flash[:notice] = "Token updated"
      user.update_attributes(:weibo_token => token, :weibo_avatar_small => image_small,
                            :weibo_avatar_large => image_large, :weibo_avatar_hd => image_hd)
    end
    log_in user
    flash[:success] = "Login success! Hello #{user_name}!"
    redirect_to root_url
  end

  def github
    #get code from github
    u = URI.parse(request.original_url)
    p = CGI.parse(u.query)
    code = p['code'].first

    # get access token with code
    url = URI.parse("https://github.com/login/oauth/access_token")

    post_args = {}
    post_args['client_id'] = 'ef4851492798b73472fe'
    post_args['client_secret'] = 'b3b6c5a2ae09163846f84d05a001605317032c09'
    post_args['code'] = code
    #post_args['redirect_uri'] = 'http://127.0.0.1:3000/github'

    https = Net::HTTP.new(url.host,url.port)
    https.use_ssl = true
    req = Net::HTTP::Post.new(url.path, initheader = {'Accept' =>'application/json'})
    req.form_data = post_args
    resp = https.request(req)
    obj = JSON.parse(resp.body)
    token = obj['access_token']


    #get user info with access token
    uri = URI.parse("https://api.github.com/user?access_token=#{token}")
    response = Net::HTTP.get_response(uri)
    result = JSON.parse(response.body)

    user_name =  result['login']
    user_id = result['id'].to_s
    user_email = "#{user_id}@github.com".downcase
    image = result['avatar_url']

    user = User.find_by(email: user_email)
    if !user
      flash[:notice] = 'User created'
      user = User.create(name: user_name, email:user_email, password: token, password_confirmation: token,
                         user_type:"github", github_token: token, github_id: user_id, github_avatar: image)
    else
      flash[:notice] = "Token updated"
      user.update_attributes(:github_token => token, :github_avatar => image)
    end
    log_in user
    flash[:success] = "Login success! Hello #{user_name}!"
    redirect_to root_url
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to root_url
      flash[:success] = 'Login success!'
    else
      flash[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end

end
