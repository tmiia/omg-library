class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end
  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def update
    if @author.update(author_params)
      redirect_to authors_path, notice: "author was successfully updated."
    else
      render :edit
    end
  end

  def create
    @author = Author.new(author_params)

    if @author.save
      redirect_to @author
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def author_params
      params.require(:author).permit(:name, :firstname)
    end
end
