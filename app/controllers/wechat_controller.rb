class WechatController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index
    render :text => params[:echostr]
  end

  def create
    puts params
    render "echo", :formats => :xml
    # if params[:xml][:MsgType] == "text"
    #   render "echo", :formats => :xml
    # end
  end
end
