class WelcomeController < ApplicationController
  def index
    if params[:search]
      keyword = params[:search][:name] if params[:search][:name]
      @result = News.keyword_search(keyword).limit(50)
      @hit_count = News.keyword_search(keyword).limit(50).count
    else
      @result = News.all.order("id DESC").limit(50)
    end
  end
end
