class MarketService 
  def self.conn
    Faraday.new(url: "http://localhost:3000/api/v0" )
  end

  def self.get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.all_markets
    get_url("markets")
  end

  def self.one_market
    require 'pry'; binding.pry
    get_url("markets/#{}")
  end
end