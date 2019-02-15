class Recipe
    include HTTParty
    ENV["FOOD2FORK_KEY"] = '1b7195dc32ffde2d692ffe6f384d4d9e'
    base_uri 'http://food2fork.com/api'
    default_params key: ENV["FOOD2FORK_KEY"]
    format :json

    def self.for term
    get("/search", query: { q: term} )["recipes"]
    end

end