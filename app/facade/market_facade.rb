class MarketFacade
  def self.get_all_markets
      MarketService.all_markets[:data].map do |market_data|
        #require 'pry'; binding.pry
      Market.new(market_data)
    end
  end

  def self.get_one_market
    MarketService.one_market[:data].map do |market_data|
      Market.new(market_data)
    end
  end
end