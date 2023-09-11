class MarketsController < ApplicationController
  def index
    @markets = MarketFacade.get_all_markets
  end

  def show
    @market = MarketFacade.get_one_market
  end
end