module WeddingApi
  class Client
    attr_reader :connection
    private :connection

    def initialize(connection)
      @connection = connection
    end

    def weddings
      Proxies::WeddingProxy.new(connection)
    end
    
    def items
      Proxies::ItemProxy.new(connection)
    end
  end
end
