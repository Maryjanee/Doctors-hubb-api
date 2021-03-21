# frozen_string_literal: true

# application
class ApplicationController < ActionController::API
  include JsonWebToken
  include Authenticable
end
