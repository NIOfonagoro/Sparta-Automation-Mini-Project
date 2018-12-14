require "capybara/dsl"

class Amazon_Gift_Card
  include Capybara::DSL

  def added_to_basket_confirmation
    find("#huc-v2-order-row-confirm-text").text
  end

  def empty_basket_confirmation
    find("#sc-active-cart h1").text
  end
end
