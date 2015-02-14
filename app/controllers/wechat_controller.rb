class WechatController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def init
    render :text => params[:echostr]
  end

  def create
  end
end
