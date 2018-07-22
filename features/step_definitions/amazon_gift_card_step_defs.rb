Given("I access the amazon homepage and navigate to the gift card page") do
  click_link("Gift Cards & Top Up")
  find("img[alt='eGift Cards']").click
  click_link("Amazon.co.uk eGift Voucher")
end

When("I cycle through the different voucher types before deciding on style") do
  click_button("ANIMATED")
  sleep 1
  click_button("UPLOAD")
  sleep 1
  click_button("STANDARD")
end

When("I enter valid voucher details") do
  click_button('25')
  fill_in "emails", with: "abc@def.com"
  fill_in "from", with: "Nicky"
  fill_in "message", with: "Stay blessed"
  fill_in "quantity", with: "7"
  # find("#gc-buy-box-atc").click
  # find("#hlb-view-cart-announce").click
end

Then("I should be able to add this to my basket") do
  find("#gc-buy-box-atc").click
  sleep 1
  expect(@amazon_site.amazon_registration.added_to_basket_confirmation).to eq "Added to Basket"
end

Given("that I have added items to my basket") do
  click_link("Gift Cards & Top Up")
  find("img[alt='eGift Cards']").click
  click_link("Amazon.co.uk eGift Voucher")
  click_button("STANDARD")
  click_button('25')
  fill_in "emails", with: "abc@def.com"
  fill_in "from", with: "Nicky"
  fill_in "message", with: "Stay blessed"
  fill_in "quantity", with: "7"
  find("#gc-buy-box-atc").click
  click_link("Amazon.co.uk")
  click_link("Shop by ")
  click_link("Kindle")
  find("img[alt='White']").click
  find("#add-to-cart-button").click
  @amazon_site.amazon_homepage.visit_homepage
end

When("I go my view my basket") do
  find("#nav-cart").click
end

Then("I should be able to delete my items and return to the homepage") do
  find(".a-declarative").click
  expect(@amazon_site.amazon_gift_card.empty_basket_confirmation).to eq "Your Shopping Basket is empty."
end
