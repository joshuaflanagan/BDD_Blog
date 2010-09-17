class ArticlesController < ApplicationController
  before_filter :authenticate_user!, :except => [:show, :index]

  def index
    @articles = Article.all
  end
  
  def show
    @article = Article.find params[:id]
  end
  
  def new
    @article = Article.new
  end
  
  def create
    @article = Article.new params[:article]
    if @article.valid?
      @article.save
      redirect_to root_url, :notice => "New article created"
    else
      render :new
    end
  end
  
  def edit
    @article = Article.find params[:id]
  end
  
  def update
    @article = Article.new params[:article]
    if @article.valid?
      @article.save
      redirect_to root_url, :notice => "Article updated."
    else
      render :edit
    end
  end
  
end
