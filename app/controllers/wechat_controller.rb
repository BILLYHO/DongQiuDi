class WechatController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index
    render :text => params[:echostr]
  end

  def create
    puts "Log params"
    puts params.inspect
    puts "Finished"
    render "echo", :formats => :xml
    # if params[:xml][:MsgType] == "text"
    #   render "echo", :formats => :xml
    # end
  end
end
