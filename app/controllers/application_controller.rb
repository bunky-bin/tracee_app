class ApplicationController < ActionController::Base
  before_action :authenticate_user!
end

def default_url_options
  { host: ENV["www.tracee808.org"] || "localhost:3000" }
end

# If you deploy your code with Heroku for instance, just type in your terminal:

# heroku config:set DOMAIN=www.my_product.com

# You can check it's properly set with heroku config:get DOMAIN.
