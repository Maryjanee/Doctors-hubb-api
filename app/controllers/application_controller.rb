# application
class ApplicationController < ActionController::API
  include JsonWebToken
  include Authenticable
end
