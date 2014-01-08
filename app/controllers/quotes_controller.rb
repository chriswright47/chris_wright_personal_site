class QuotesController < ApplicationController
  def index
    @quotes = Quote.all
  end

  def new
    @quote = Quote.new
  end

  def create
    Quote.create(params[:quote])
    redirect_to quotes_path
  end

  def edit
    @quote = Quote.find(params[:id])
  end

  def update
    quote = Quote.find(params[:id])
    quote.update_attributes(params[:quote])
    redirect_to quotes_path
  end

  def destroy
    quote = Quote.find(params[:id])
    quote.destroy
    redirect_to quotes_path
  end
end
