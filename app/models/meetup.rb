class Meetup
    include HTTParty

    base_uri 'api.meetup.com'

    def get_data
        self.class.get('/Social-Vegans/events')
    end

    def events
        get_data.parsed_response
    end

    def get_data2
        self.class.get('/Vibrant-Food-Vibrant-Life/events')
    end

    
end