class ArticlesController < ApplicationController

  def index
    @article = Article.all
  end


  def show
    @article = Article.find(params[:id])
  end

  def edit 
    @article = Article.find(params[:id])
  end 

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(params_article)
    if @article.save
      flash[:notice] = "Article was created successfully"
      redirect_to articles_path
    else
      render 'new'
    end
  end

  def update
    @article = Article.find(params[:id])
    @article.update_attributes(params_article)
    if @article.save
      flash[:notice] = "Article was updated successfully"
      redirect_to articles_path
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

  private

  def params_article
    params.require(:article).permit!
  end
end



  

     





