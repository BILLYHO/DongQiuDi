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

    # button1 = {}
    # button1['type'] = 'click'
    # button1['name'] = '资讯'
    # button1['key'] = 'news'
    #
    # button2 = {}
    # button2['type'] = 'click'
    # button2['name'] = '赛事'
    # button2['key'] = 'matchs'
    #
    # button3 = {}
    # button3['type'] = 'click'
    # button3['name'] = '排行榜'
    # button3['key'] = 'rank'
    #
    # buttons = [button1, button2, button3]
    #
    # post_args = {}
    # post_args['button'] = buttons
    #
    # url = URI.parse("https://api.weixin.qq.com/cgi-bin/menu/create?access_token=#{token}")
    # https = Net::HTTP.new(url.host,url.port)
    # https.use_ssl = true
    # req = Net::HTTP::Post.new(url.path)
    # req.form_data = post_args
    # resp = https.request(req)
    # obj = JSON.parse(resp.body)
    # errcode = obj['errcode']
    # flash[:notice] = errcode

    params = {'button' => [
        { 'type' => 'click', 'name' => '资讯', 'key' => 'news'},
        { 'type' => 'click', 'name' => '赛事', 'key' => 'matchs'},
        { 'type' => 'click', 'name' => '排行榜', 'key' => 'rank'}
    ]}
    json_headers = {"Content-Type" => "application/json",
                    "Accept" => "application/json"}

    uri = URI.parse("https://api.weixin.qq.com/cgi-bin/menu/create?access_token=#{token}")
    https = Net::HTTP.new(uri.host, uri.port)
    https.use_ssl = true
    response = https.post(uri.path, params.to_json, json_headers)
    obj = JSON.parse(response.body)
    errcode = obj['errcode']
    flash[:notice] = errcode

  end


end
