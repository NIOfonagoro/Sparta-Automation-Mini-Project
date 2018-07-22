HOMEPAGE_URL = "https://www.amazon.co.uk/"
SIGN_IN_LINK_CLASS = "#nav-link-yourAccount"
SIGN_UP_LINK_CLASS = "#createAccountSubmit"


Before do
  @amazon_site = Amazon_Site.new
  @amazon_site.amazon_homepage.visit_homepage
end

After do
  sleep 1
end
