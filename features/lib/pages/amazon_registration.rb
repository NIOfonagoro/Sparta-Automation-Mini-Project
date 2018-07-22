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

  def error_message
    one = find("#auth-customerName-missing-alert").text
    two = find("#auth-email-missing-alert").text
    three = find("#auth-password-missing-alert").text
    four = find("#auth-passwordCheck-missing-alert").text


    case message  # was case obj.class
    when one == error
      one
    when two == error
      two
    when three == error
      three
    when four == error
      four
    else
      null
    end

  end

end
