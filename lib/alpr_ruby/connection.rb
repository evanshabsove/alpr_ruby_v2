require 'json'

module AlprRuby
  class Connection
    BASE_URL = 'https://api.openalpr.com/v2'.freeze

    def initialize(secret:)
      @secret = secret
    end

    def call(endpoint:, method:, params: {})
      if params[:image_url] == nil
        response = Typhoeus::Request.new(
          "#{BASE_URL}/#{endpoint}",
          method: method,
          params: { secret_key: @secret }.merge!(params),
        ).run
      else
        response = Typhoeus::Request.new(
          "#{BASE_URL}/#{endpoint}_url",
          method: method,
          params: { secret_key: @secret }.merge!(params),
        ).run
      end

      if response.response_code != 200
        AlprRuby::Error.new(code: response.response_code).render
      end

      JSON.parse(response.response_body)
    end
  end
end
