class WechatController < ApplicationController
  skip_before_filter :verify_authenticity_token
  require 'action_dispatch/xml_params_parser'

  def index
    render :text => params[:echostr]
  end

  def create
    if params[:xml][:MsgType] == "text"
      render "echo", :formats => :xml
    elsif params[:xml][:MsgType] == "event"
      case params[:xml][:EventKey]
        when "news" then render "news", :formats => :xml
        when "matchs" then render "matchs", :formats => :xml
        when "rank" then render "rank", :formats => :xml
      end
    end
  end
end
