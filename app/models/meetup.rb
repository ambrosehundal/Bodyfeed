class Meetup
    include HTTParty

    base_uri 'api.meetup.com'

    def get_data
        self.class.get('/Social-Vegans/events')
    end
end