require 'httparty'
require 'uri'
require 'people/http_proxy'
require 'people/initializer'

module People
  class Client
    include HTTParty
    include People::Initializer
    include People::HttpProxy
  end
end
