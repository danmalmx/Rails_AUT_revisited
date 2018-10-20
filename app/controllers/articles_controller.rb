class ArticlesController < ApplicationController
  
  def index
    @articles = Articles.all
  end

  def show
    @article = Articles.find(params[:id])
  end 

  def new
    @article = Articles.new
  end

  def create
    @article = Articles.new(article_param)

    if @article.save
      redirect_to articles_path
      flash[:success] = "Article was successfully created."
    else
      render 'new'
      flash[:error] = "Article was not created, try again."
    end
  end

  private
    def article_param
      params.require(:articles).permit(:title, :content)
    end
end