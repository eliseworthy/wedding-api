require 'faraday'
require 'wedding_api/result'

module WeddingApi
  class Connection
     DEFAULTS = {:port => 80}

    attr_reader :connection
    private :connection

    def initialize(options = {})
      options = DEFAULTS.merge(options)
      url = "http://wedding-api.herokuapp.com"
      @connection = Faraday.new(:url => url)
    end

    def post(url, body=nil)
      body_json = body.to_json if body

      response = connection.post do |req|
        req.url(url)
        req.headers['Accept'] = 'application/json'
        req.headers['Content-Type'] = 'application/json'
        req.body = body_json
      end

      response_to_result(response)
    end

    def get(url, params={})
      response = connection.get do |req|
        req.url(url)
        req.headers['Accept'] = 'application/json'
        req.params = params
      end

      response_to_result(response)
    end

    def delete(url, params={})
      response = connection.delete do |req|
        req.url(url)
        req.headers['Accept'] = 'application/json'
        req.params = params
      end

      response_to_result(response)
    end

    def put(url, body=nil)
      body_json = body.to_json if body

      response = connection.put do |req|
        req.url(url)
        req.headers['Accept'] = 'application/json'
        req.headers['Content-Type'] = 'application/json'
        req.body = body_json
      end

      response_to_result(response)
    end

    private

    def response_to_result(response)
      value = Parser.parse(response.body)
      Result.new(response.status, value)
    end
  end
end
