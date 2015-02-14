class WechatController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index
    render :text => params[:echostr]
  end

  def create
    if params[:MsgType] == "text"
      render "echo", :formats => :xml
    end
  end
end
