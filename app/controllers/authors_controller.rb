class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
  end

  def create

    @author = Author.create(author_params)
    if !@author.valid?
      p @author.errors.messages
      # redirect_to new_author_path
      render "authors/new"
    else 
      redirect_to author_path(@author)
    end
  end

  private

  def author_params
    params.permit(:email, :name)
  end
end
