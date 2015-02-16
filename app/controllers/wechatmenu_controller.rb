class WechatmenuController < ApplicationController


  def index
    #get access token
    appid = 'wxa60b8ae3f6216c57'
    appsecret = '50cdfb17aef192f8f97a616f9c150c1d'
    uri = URI.parse("https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=#{appid}&secret=#{appsecret}")
    response = Net::HTTP.get_response(uri)
    result = JSON.parse(response.body)
    token = result['access_token']
    flash[:success] = token

  end


end
