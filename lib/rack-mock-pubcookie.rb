# Mock mod_pubcookie handler
#
# Sets request.env['REMOTE_USER'] from the command line env var REMOTE_USER.
# Also sets request.env['ON_DEMAND_KEY'] from the cookie OnDemandKey, which
# is handled by mod_pubcookie in production.
#
module Rack
  class MockPubcookie
    def initialize(app)
      @app = app
    end

    def call(env)
      req = Rack::Request.new(env)
      env['REMOTE_USER'] = ENV['REMOTE_USER']
      env['ON_DEMAND_KEY'] = req.cookies['OnDemandKey']
      @app.call(env)
    end
  end
end
