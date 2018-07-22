require "capybara/dsl"

class Amazon_Registration
  include Capybara::DSL

  def fill_registration_name(name)
    fill_in("customerName", with: "#{name}")
  end

  def fill_registration_email(email)
    fill_in("email", with: "#{email}")
  end

  def fill_registration_passwords(password,retype_password)
    fill_in("password", with: "#{password}")
    sleep 1
    fill_in("passwordCheck", with: "#{retype_password}")
  end

  def click_create_your_amazon_account_button
    find("#continue").click
  end

end
