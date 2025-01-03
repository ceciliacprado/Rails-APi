class ApiTest 
    attr_reader :version, :default

    def initialize(options)
        @version = options[:version]
        @default = options[:default]
    end

    def matches?(request)
        @default || request.headers['Accept'].include?("application/vnd.marketplace.v#{@version}")
    end 
end 