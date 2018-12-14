Given("I access the amazon homepage and then registration page") do
  @amazon_site.amazon_homepage.click_sign_in_link
  @amazon_site.amazon_homepage.click_sign_up_link
end

When(/^filling in details and a section if left blank (.*) (.*) (.*) (.*)$/) do |name, email, password, retype_password|
  @amazon_site.amazon_registration.fill_registration_name(name)
  sleep 1
  @amazon_site.amazon_registration.fill_registration_email(email)
  sleep 1
  @amazon_site.amazon_registration.fill_registration_passwords(password, retype_password)
  sleep 1
  @amazon_site.amazon_registration.click_create_your_amazon_account_button
end

Then(/^It should show the correct error meesage (.*)$/) do |error|
 pending # expect(@amazon_site.amazon_registration.error_message).to be eq "#{error}"
end
