class WechatController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def show
    render :text => params[:echostr]
  end

  def create
    if params[:xml][:MsgType] == "text"
      render "echo", :formats => :xml
    end
  end
end
