class GlobalSummary 
    include HTTParty  #Gem para fazer requisições HTTP
    base_uri 'https://covid19.mathdro.id/api' #url da API

    def initialize 
        @options = {}
    end 

    def general
        self.class.get('/', @options)
    end

    def confirmed
        self.class.get('/confirmed', @options)
    end

    def recovered
        self.class.get('/recovered', @options)
    end

    def deaths
        self.class.get('/deaths', @options)
    end
end
