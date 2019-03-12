class Leetcode
    include HTTParty

    base_uri 'api.meetup.com'

    def get_new_coding_sessions_data
        self.class.get('/tech-bay-area/events')
    end

    def events
        if get_new_coding_sessions_data.code.to_i == 200
            get_new_coding_sessions_data.parsed_response
        else
            raise "Error fetchinfg data from Meetup API"
        end
    end

   


    
end