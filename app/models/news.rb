class News < ActiveRecord::Base
  def self.keyword_search(keyword)
    News.where("title LIKE ? OR description LIKE ?", "%#{keyword}%", "%#{keyword}%").order("id DESC")
  end
end
