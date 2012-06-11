require 'chattin_api/proxies/abstract_proxy'

module ChattinApi
  module Proxies
    class PresentationProxy < AbstractProxy
      def find(id)
        connection.get "/presentations/#{id}"
      end

      def find_all
        connection.get "/presentations"
      end

      def create(attributes)
        connection.post "/presentations", attributes
      end

      def create_invite(attributes)
        connection.post "/presentationinvites", attributes
      end
    end
  end
end