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

  def edit
    @article = Articles.find(params[:id])
  end

  def create
    @article = Articles.new(article_param)

    if @article.save
      flash[:success] = "Article was successfully created."
      redirect_to articles_path
    else
      render 'new'
    end
  end

  def update
    @article = Articles.find(params[:id])

    if @article.update(article_param)
      redirect_to articles_path
      flash[:success] = "Article was successfully updated."

    else 
      render 'edit'
    end
  end


  private
    def article_param
      params.require(:articles).permit(:title, :content)
    end
end