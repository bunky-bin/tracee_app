class ApplicationController < ActionController::Base
  before_action :authenticate_user!
end

# Rails image_url helper requires you setup your host to generate the absolute url needed
# to load your images from the external world (Facebook, Twitter, ...).

# Override Rails.application.default_url_options[:host]

def default_url_options
  { host: ENV["Tracee"] || "localhost:3000" }
end
