module WeddingApi
  class Client
    attr_reader :connection
    private :connection

    def initialize(connection)
      @connection = connection
    end

    def comments
      Proxies::WeddingProxy.new(connection)
    end
    
    def presentations
      Proxies::ItemProxy.new(connection)
    end
  end
end
