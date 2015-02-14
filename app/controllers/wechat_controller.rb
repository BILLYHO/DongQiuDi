class WechatController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def init
    render :text => params[:echostr]
  end

  def response
    if params[:xml][:MsgType] == "text"
      render "echo", :formats => :xml
    end
  end
end
