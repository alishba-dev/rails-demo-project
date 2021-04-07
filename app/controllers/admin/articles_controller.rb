class Admin::ArticlesController < Admin::BaseController
  def new
  end

  def index
    @articles = Article.all
  end

  def create
  end

  def destroy
  end

  def edit
  end

  def update
  end

  def show
    @article = Article.find(params[:id])
    # respond_to do |format|
    #   format.html
    #   format.json { render json: @article, only: [:id] }
    # end
  end
end
