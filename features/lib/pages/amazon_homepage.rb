require "capybara/dsl"

class Amazon_Homepage
  include Capybara::DSL

  def visit_homepage
    visit(HOMEPAGE_URL)
  end

  def click_sign_in_link
    find(SIGN_IN_LINK_CLASS).click
  end

  def click_sign_up_link
    find(SIGN_UP_LINK_CLASS).click
  end

end
