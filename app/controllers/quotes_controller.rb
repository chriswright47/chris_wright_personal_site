require 'json'
class QuotesController < ApplicationController
  before_filter :signed_in_user, except: [:index, :rand_quote]
  def index
    @quotes = Quote.all
  end

  def new
    @quote = Quote.new
  end

  def create
    Quote.create(quote_params)
    redirect_to quotes_path
  end

  def edit
    @quote = Quote.find(params[:id])
  end

  def update
    quote = Quote.find(params[:id])
    quote.update_attributes(quote_params)
    redirect_to quotes_path
  end

  def destroy
    quote = Quote.find(params[:id])
    quote.destroy
    redirect_to quotes_path
  end

  def rand_quote
    @quote = Quote.find(Quote.pluck(:id).sample)
    render partial: 'pages/quote', locals: {quote: @quote}
  end

  private
  def quote_params
    params.require(:quote).permit(:content, :author, :link)
  end

  def signed_in_user
    redirect_to home_path unless current_user
  end
end
