require 'rails/application'
require 'action_controller/metal/exceptions'
require "rails_uri_parser/version"

module RailsUriParser
  def self.get_id(uri)
    Rails.application.routes.recognize_path(uri)[:id]
  rescue ActionController::RoutingError
    # => return nil if route is bad
  end
end
