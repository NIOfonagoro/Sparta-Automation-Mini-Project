require "capybara/dsl"
require_relative "./pages/amazon_homepage.rb"

class Amazon_Site

  def amazon_homepage
    Amazon_Homepage.new
  end

  def amazon_registration
    Amazon_Registration.new
  end

  def amazon_gift_card
    Amazon_Gift_Card.new
  end

end
