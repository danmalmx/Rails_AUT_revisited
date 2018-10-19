class ArticlesController < ApplicationController
  
  def index
    @articles = Articles.all
  end

  def new
    @article = Articles.new
  end

  def create
    @article = Articles.new(article_params)
  end

  def show
    @article = article(params :id)

  end 

  def update
  end

end