 
require 'net/http'
require 'net/https'

module SusciptionsHelper

    # This helper validate email if no real
    
    def validateEmailServer(mail)

        url_serviceabs = "https://emailvalidation.abstractapi.com/v1"
        # mail = "perrom,mksd@sgmail.com"
        apikey = "b44585dd38e3494ea4f55d17efb414a4"
    
        uri = URI("#{url_serviceabs}/?api_key=#{apikey}&email=#{mail}")
        res = Net::HTTP.get_response(uri)
     
        rescue StandardError => error
   
        return [response.code, JSON.load(response.body)["quality_score"] ]
    end
end
