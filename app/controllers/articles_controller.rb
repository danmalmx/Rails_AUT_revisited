class ArticlesController < ApplicationController
  
  def index
    @articles = Articles.all
  end

  def new
    @article = Articles.new
  end

  def create
    @article = Articles.new(article_params)

    @article.save
    redirect_to @article
  end

  def show
    @article = Articles.find(params[:id])
  end 

  def update

  end

  private
    def article_param
      params.require(:articles).permit(:title, :content)
    end
end