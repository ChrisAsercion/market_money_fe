require 'rails_helper'

RSpec.describe 'Markets Show Page' do

  describe 'visit markets' do
    scenario 'I see a list of markets I see all markets listed with their name, city and state' do
      data = MarketFacade.get_all_markets
      
      visit "http://localhost:3000/markets/"

      expect(page).to have_content(data[0].name)
      expect(page).to have_content(data[0].state)
      expect(page).to have_content(data[0].city)
    end

    scenario 'I click on the view details page' do
      data = MarketFacade.get_all_markets
      
      visit "http://localhost:3000/markets/"

      expect(page).to have_link("View #{data[0].name} Details")

      click_on("View #{data[0].name} Details")
      expect(current_path).to eq(market_path(data[0].id))
    end
  end
  describe 'visit markets/:id' do
    scenario 'I see the market name, address, and a list of all vendors for that market.' do
      data = MarketFacade.get_all_markets
      market1 = data[0]
      
      visit "http://localhost:3000/markets/#{market1.id.to_i}"

    end
    xscenario 'each vendor name is a link to that vendor show page' do

    end
  end
end