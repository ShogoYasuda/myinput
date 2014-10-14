class NewsController < ApplicationController
  def index
    if params[:last]
      first =  params[:last]
      last = params[:last].to_i + 18
      list = News.where(["id >= ? and id <= ?", first, last])
      render json: list
    else
      time = Time.now+1.day
      today = time.strftime("%Y-%m-%d")
      tag = params[:tag]
      list = News.where(["category = ? and created_at <= ?", tag, today]).order("id DESC")
      render json: list
    end
  end
end
