require 'chattin_api/proxies/abstract_proxy'

module WeddingApi
  module Proxies
    class WeddingProxy < AbstractProxy

      def all
        connection.get "/weddings"
      end

      def find(id)
        connection.get "/weddings/#{id}"
      end

      def create(attributes)
        connection.post "/weddings", attributes
      end

      def update(id, attributes)
        connection.put "/weddings/#{id}", attributes
      end

      def destroy(id)
        connection.delete "/weddings/#{id}"
      end
    end
  end
end
