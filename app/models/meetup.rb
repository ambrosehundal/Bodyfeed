class Meetup
    include HTTParty

    base_uri 'api.meetup.com'

    def get_data
        self.class.get('/Social-Vegans/events')
    end

    def events
        if get_data.code.to_i == 200
            get_data.parsed_response
        else
            raise "Error fetchinfg data from Meetup API"
        end
    end

    def get_vibrant
        self.class.get('/Vibrant-Food-Vibrant-Life/events')
    end

    def vibrant
        get_vibrant.parsed_response
    end


    
end