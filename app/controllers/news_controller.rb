class NewsController < ApplicationController
  def index
    @title = text('news', 'news_all')
    @news = get_language.new.all
  end

  def new
    @new = New.find_by(id: params[:id])
    if @new
      @title = @new.title
    else
      redirect_to news_path, notice: 'Новость не найдена'
    end
  end
end
