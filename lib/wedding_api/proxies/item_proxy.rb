require 'chattin_api/proxies/abstract_proxy'

module WeddingApi
  module Proxies
    class ItemProxy < AbstractProxy
      def find(id)
        connection.get "/item/#{id}"
      end

      def find_all
        connection.get "/items"
      end
      
      def create(attributes)
        connection.post "/items", attributes
      end
      
      def update(id, attributes)
        connection.put "/items/#{id}", attributes
      end

      def destroy(id)
        connection.delete "/items/#{id}"
      end
    end  
  end
end