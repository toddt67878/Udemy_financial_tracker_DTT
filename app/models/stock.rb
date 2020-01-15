class Stock < ApplicationRecord

  def self.new_lookup(ticker_symbol)
    client = IEX::Api::Client.new(
  publishable_token:'Tpk_9bdad0c672d743f3bd48d67a1a89f1e2',
  endpoint: 'https://sandbox.iexapis.com/v1'
)
    client.price(ticker_symbol)
  end
end
