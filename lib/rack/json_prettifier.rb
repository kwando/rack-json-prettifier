require_relative 'json_prettifier/version'
module Rack
  class JsonPrettifier
    CONTENT_TYPE = 'Content-Type'.freeze
    CONTENT_LENGTH = 'Content-Length'.freeze

    def initialize(app)
      @app = app
    end

    def call(env)
      status, headers, response = @app.call(env)
      if headers[CONTENT_TYPE] =~ /^application\/json/
        obj = JSON.parse(response.body)
        pretty_str = JSON.pretty_unparse(obj)
        response = [pretty_str]
        headers[CONTENT_LENGTH] = Rack::Utils.bytesize(pretty_str).to_s
      end
    ensure
      [status, headers, response]
    end
  end
end