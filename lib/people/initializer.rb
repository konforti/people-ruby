require 'people/api/v1'

module People
  module Initializer
    def initialize(config)
      options = config.deep_symbolize_keys
      self.class.base_uri base_url(options[:domain])
      self.class.headers headers(options)
      self.class.basic_auth *auth(options[:secret_key])
    end

    private

    def auth(secret_key)
      extend People::Api::V1
      fail InvalidCredentials, 'Invalid API v1 secret_key' if secret_key.nil?
      [secret_key, '']
    end

    def base_url(domain)
      fail InvalidApiNamespace, 'Api namespace must supply an API domain' if domain.nil?
      "#{domain}"
    end

    def headers(options)
      headers = {}
      client_info = JSON.dump(name: 'ruby-people', version: People::VERSION)

      headers['Content-Type'] = 'application/json'

      unless options[:opt_out_sdk_info]
        headers['User-Agent'] = "Ruby/#{RUBY_VERSION}"
        headers['People-Client'] = Base64.urlsafe_encode64(client_info)
      end

      headers
    end

  end
end
