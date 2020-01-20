class WordsController < ApplicationController

  def index
    @word = Word.order("RANDOM()").first
  end

  def new
    @word = Word.new
  end

  def create
    Word.create(quote_params)
    redirect_to root_path
  end

  private

  def quote_params
    params.require(:word).permit(:word)
  end
end
