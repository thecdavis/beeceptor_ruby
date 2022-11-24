# frozen_string_literal: true

require_relative 'resource/history'
require_relative 'resource/rules'
require 'faraday'
require 'json'

module BeeceptorRuby
  # Client provides methods for interacting with all beeceptor
  # features i.e. mocking rules and api request
  class Client
    include BeeceptorRuby::Client::Resource::History
    include BeeceptorRuby::Client::Resource::Rules

    def initialize(options)
      @base_url = "https://api.beeceptor.com/api/v1/endpoints/#{options[:endpoint]}"
      @api_key = options[:api_key]
      @client = Faraday.new(@base_url, builder: build_middleware) do |http|
        http.headers[:content_type] = 'application/json'
        http.headers[:authorization] = @api_key
      end
    end

    attr_reader :base_url

    def request(method, path, params = {}, headers = {})
      path = URI.parse("#{@base_url}#{path}").normalize.to_s
      @client.send(method, path, params, headers)
    end

    def build_middleware
      Faraday::RackBuilder.new do |builder|
        builder.response :json
      end
    end
  end
end
